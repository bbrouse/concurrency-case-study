package main

import (
	"fmt"
	"time"
)

func sayHello() {
	//fmt.Println("Hello")
}

func main() {
	t0 := time.Now()
	for i := 0; i < 10000; i++ {
		go sayHello()
	}
	t1 := time.Now()

	duration := t1.Sub(t0)
	fmt.Printf("%v\n", int64(duration/time.Millisecond))
}