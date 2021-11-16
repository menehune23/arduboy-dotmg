import hashlib
import json
import os.path
import sys
import tarfile

# ---------------------------------------------------------------------------------------
# Usage (after bumping version in 'platform.txt'):
#   python3 update-index.py [base-url]
#
# Note:
# To test package locally, set base URL to 'file:///<path/to/this/repo/board-packages>'.
# Then add 'file:///<path/to/this/repo/board-packages/package_arduboy-ce_index.json'
# to board manager URLs in Arduino IDE. You can then find 'dotMG (Pro Micro)' in IDE
# board manager.
#
# If base URL is left blank, it defaults to point at this project's remote repo.
# ---------------------------------------------------------------------------------------

def make_tarfile(output_filename, source_dir, top_dir):
    with tarfile.open(output_filename, 'w:gz') as tar:
        tar.add(source_dir, arcname=top_dir)

    hasher = hashlib.sha256()
    with open(output_filename, 'rb') as fh:
        data = fh.read()
        hasher.update(data)
        return hasher.hexdigest(), len(data)

def find_version(platform_path):
    with open(platform_path, 'rt') as platform_file:
        for line in platform_file:
            if line.startswith('version='):
                return line.strip('version=').strip()
    return ''

src_path = 'board-package-source'
platform_path = os.path.join(src_path, 'platform.txt')
version = find_version(platform_path)
base_url = sys.argv[1] if len(sys.argv) > 1 else 'https://raw.githubusercontent.com/menehune23/arduboy-dotmg/main/board-packages'
tar_name = 'dotmg-' + version + '.tar.gz'
tar_path = os.path.join('board-packages', tar_name)

digest, size = make_tarfile(tar_path, src_path, version)

with open(os.path.join('board-packages', 'package_dotmg_index.json'), 'r+') as index_file:
    data = json.load(index_file)
    platform = data['packages'][0]['platforms'][-1].copy()
    platform['version'] = version
    platform['archiveFileName'] = tar_name
    platform['checksum'] = 'SHA-256:' + digest
    platform['size'] = str(size)
    platform['url'] = base_url + '/' + tar_name
    data['packages'][0]['platforms'].append(platform)
    index_file.seek(0)
    json.dump(data, index_file, indent=4, sort_keys=True)
    index_file.truncate()
