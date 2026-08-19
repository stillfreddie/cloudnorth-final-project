package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "CloudNorth backend running")
}

func healthHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "ok")
}

func main() {
	http.HandleFunc("/", handler)
	http.HandleFunc("/api/health", healthHandler)
	fmt.Println("Starting CloudNorth backend on port 8080...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}