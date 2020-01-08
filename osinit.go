package main

import "time"
import "os"
import "log"

func main() {
	log.Println(os.Environ())
	for {
		time.Sleep(3*time.Second)
		log.Println(time.Now())
	}
}
