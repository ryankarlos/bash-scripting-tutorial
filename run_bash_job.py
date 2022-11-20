import shutil
import subprocess
import os
import logging

PATH = 'data/files/'
logger=logging.getLogger('run_bash_job')
logging.basicConfig(level=logging.INFO)


def execute_bash_script():
    if os.path.exists(PATH):
        shutil.rmtree(PATH)
    result = subprocess.run(["bash", "./execute_file.sh"], stdout=subprocess.PIPE, shell=True, text=True)
    logger.info("log stdout from bash script: \n\n{'-' * 20}\n\n (result.stdout} \n{'-*20}\n")
    logger.info("moving file2 to file3")
    return os.path.join(PATH, "file2.txt")


def copy_file_sh(src):
    assert os.path.exists(src)
    dst = os.path.join(PATH, "file3.txt")
    logger.info("copying file2.txt to file3.txt")
    shutil.copy(src=src, dst=dst)
    assert os.path.exists(dst)


def run_job():
    copy_file_sh(src=execute_bash_script())


if __name__ == "__main__":
    run_job()
