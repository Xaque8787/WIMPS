import os
import shutil

# Read the destination path from the configuration file
with open('destination.cfg', 'r') as f:
    destination_path = f.read().strip()

# Specify paths for movies
local_dir = os.path.join(destination_path, 'Movie VOD')
master_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'Movie VOD')

def sync_directories(src, dest):
    for item in os.listdir(src):
        src_item = os.path.join(src, item)
        dest_item = os.path.join(dest, item)

        if os.path.isdir(src_item):
            if not os.path.exists(dest_item):
                os.makedirs(dest_item)
            sync_directories(src_item, dest_item)
        elif os.path.isfile(src_item):
            if not os.path.exists(dest_item):
                shutil.copy2(src_item, dest_item)

# Create temporary directory for files to be synced
# temp_dir = os.path.join(local_dir, '_temp')
# if not os.path.exists(temp_dir):
#    os.makedirs(temp_dir)

# Sync only files that are on master but not on local
for root, dirs, files in os.walk(master_dir):
    rel_root = os.path.relpath(root, master_dir)
    dest_root = os.path.join(local_dir, rel_root)

    for name in files:
        src_path = os.path.join(root, name)
        dest_path = os.path.join(dest_root, name)

        if not os.path.exists(dest_path):
            if not os.path.exists(dest_root):
                os.makedirs(dest_root)
            shutil.copy2(src_path, dest_path)

    for name in dirs:
        src_path = os.path.join(root, name)
        dest_path = os.path.join(dest_root, name)

        if not os.path.exists(dest_path):
            if not os.path.exists(dest_root):
                os.makedirs(dest_root)
            shutil.copytree(src_path, dest_path)

# Delete files and folders in local directory that are not in master directory
for root, dirs, files in os.walk(local_dir):
    rel_root = os.path.relpath(root, local_dir)
    master_root = os.path.join(master_dir, rel_root)

    for name in files:
        local_path = os.path.join(root, name)
        master_path = os.path.join(master_root, name)

        if not os.path.exists(master_path):
            os.remove(local_path)

    for name in dirs:
        local_path = os.path.join(root, name)
        master_path = os.path.join(master_root, name)

        if not os.path.exists(master_path):
            shutil.rmtree(local_path)
