package main
import mem "../"
import fmt "core:fmt"

main :: proc() {
	mem1: mem.ic74670 = mem.memInit()

	mem.setWRADDR(&mem1, false, false)
	mem.setINP(&mem1, false, false, false, true)
	mem.setNWE(&mem1, false)
	mem.setNWE(&mem1, true)

	mem.setWRADDR(&mem1, false, true)
	mem.setINP(&mem1, false, false, true, false)
	mem.setNWE(&mem1, false)
	mem.setNWE(&mem1, true)

	mem.setWRADDR(&mem1, true, false)
	mem.setINP(&mem1, false, false, true, true)
	mem.setNWE(&mem1, false)
	mem.setNWE(&mem1, true)

	mem.setWRADDR(&mem1, true, true)
	mem.setINP(&mem1, false, true, false, false)
	mem.setNWE(&mem1, false)
	mem.setNWE(&mem1, true)

	mem.setNRE(&mem1, false)
	mem.setREADDR(&mem1, false, false)
	fmt.println(mem.getOUT(&mem1))

	mem.setREADDR(&mem1, false, true)
	fmt.println(mem.getOUT(&mem1))

	mem.setREADDR(&mem1, true, false)
	fmt.println(mem.getOUT(&mem1))

	mem.setNRE(&mem1, true)
	mem.setREADDR(&mem1, true, true)
	fmt.println(mem.getOUT(&mem1))
}
