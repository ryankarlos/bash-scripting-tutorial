import shutil
import subprocess
from pathlib import Path

PATH = Path(__file__).parent.absolute() / 'data' / 'files'
print(PATH)


def execute_bash():
    if PATH.is_dir():
        shutil.rmtree(PATH)
    result = subprocess.run(["./run_script.sh"], stdout=subprocess.PIPE, shell=True, text=True, executable='/bin/zsh')
    print(result.stdout)
    src = PATH / 'file2.txt'
    assert src.exists()
    return src


def copy_file(src):
    dst = PATH / 'file3.txt'
    print("copying file2.txt to file3.txt")
    shutil.copy(src=str(src), dst=str(dst))
    assert dst.exists()


def run_job():
    copy_file(src=execute_bash())


if __name__ == "__main__":
    run_job()

