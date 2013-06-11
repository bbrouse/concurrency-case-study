echo "Starting thread case study."
run_num=2

echo "\tRunning python thread maker\c"
for i in $(seq 1 $run_num)
do
	python python/thread_test.py >> results/python_results
	sleep 1
	echo ".\c"
done

echo '\n\tRunning go goroutine maker\c'
for i in $(seq 1 $run_num)
do
	go run go/threading.go >> results/go_results
	sleep 1
	echo '.\c'
done

echo '\n\tRunning java thread maker\c'
cd java
javac threading.java
for i in $(seq 1 $run_num)
do
	java thread_test >> ../results/java_results
	sleep 1
	echo '.\c'
done
cd ..

echo '\n\tRunning c thread maker\c'
cd c
gcc -o threading threading.c -lpthread
cd ..
for i in $(seq 1 $run_num)
do
	c/./threading >> results/c_results
	sleep 1
	echo '.\c'
done

echo '\nDone!'
