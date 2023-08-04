#!/usr/bin/python3

import time

if __name__ == '__main__':
    print('started but waiting for some time')
    time.sleep(20)
    with open('/app-data/f.txt', 'w') as f:
        f.write('hi!')
    print('reading')
    with open('/app-data/f.txt', 'r') as f:
        print(f.read())

