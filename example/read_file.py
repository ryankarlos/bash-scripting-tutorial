import shutil
import subprocess


def move_file():
    subprocess.run(["touch", "file1.txt", "file2.txt"], stderr=subprocess.PIPE, text=True, shell=True)
    result = subprocess.run(["echo", "Hello","World", ">" , "file1.txt"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, shell=True)
    print(result.stdout, result.stderr)
    shutil.move(src="file1.txt", dst="file2.txt")


if __name__ == "__main__":
    move_file()