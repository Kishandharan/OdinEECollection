package main
import mem "../"
import fmt "core:fmt"

main :: proc() {
	mem1: mem.ic74670 = mem.memInit()

	mem.setINP(&mem1, false, false, false, true)
	mem.setNWE(&mem1, false)
	mem.setNWE(&mem1, true)
	mem.setNRE(&mem1, false)

	fmt.println(mem.getOUT(&mem1))
}
