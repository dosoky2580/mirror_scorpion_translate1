import os
import hashlib

def get_file_hash(filepath):
    hasher = hashlib.md5()
    try:
        with open(filepath, 'rb') as f:
            buf = f.read()
            hasher.update(buf)
        return hasher.hexdigest()
    except: return None

def smart_merge():
    project_dir = os.getcwd()
    files_map = {}
    for root, dirs, files in os.walk(project_dir):
        if '.git' in dirs: dirs.remove('.git')
        for file in files:
            if file == 'cleaner.py': continue
            full_path = os.path.join(root, file)
            if file not in files_map:
                files_map[file] = full_path
            else:
                old_path = files_map[file]
                if get_file_hash(old_path) == get_file_hash(full_path):
                    print(f"[-] حذف مكرر مطابق: {full_path}")
                    os.remove(full_path)
                else:
                    print(f"[+] دمج محتوى مختلف: {file}")
                    with open(old_path, 'a') as f_old, open(full_path, 'r') as f_new:
                        f_old.write("\n// --- Integrated Content ---\n" + f_new.read())
                    os.remove(full_path)
if __name__ == "__main__":
    smart_merge()
