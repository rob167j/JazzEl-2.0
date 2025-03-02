import time
import os

def restart_services():
    os.system("sudo systemctl restart jazzel")

def monitor_health():
    while True:
        print("Jazz-El is monitoring systems...")
        time.sleep(300)

if __name__ == "__main__":
    restart_services()
    monitor_health()
