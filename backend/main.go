package main

import (
  "fmt"
  "log"
  "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintf(w, "CloudNorth backend running")
}

func main() {
  http.HandleFunc("/", handler)
  fmt.Println("Starting CloudNorth backend on port 8080...")
  log.Fatal(http.ListenAndServe(":8080", nil))
}