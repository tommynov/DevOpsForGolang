package main

import (
	"bytes"
	"testing"
)

func TestLissajous(t *testing.T) {
	got := new(bytes.Buffer) // captured output
	lissajous(got)
	if size := got.Len(); size == 0 {
		t.Errorf("Result data size = %d", size)
	}
}
