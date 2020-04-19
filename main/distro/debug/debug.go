package debug

import (
	_ "net/http/pprof"
	"runtime"
)
import "net/http"

func init() {
	runtime.MemProfileRate = 1
	go func() {
		http.ListenAndServe(":6060", nil)
	}()
}
