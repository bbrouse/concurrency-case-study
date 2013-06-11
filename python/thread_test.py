import time
import threading


def say_hello(count):
    #print 'Hello {}\n'.format(count)
    pass

t1 = time.time()
for i in range(0, 10000):
    thread = threading.Thread(target=say_hello, args=(i,))
    thread.start()
t2 = time.time()
print '{}'.format((t2-t1)*1000.0)
