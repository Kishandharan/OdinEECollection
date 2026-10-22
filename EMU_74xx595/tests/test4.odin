package main
import sr "../"
import fmt "core:fmt"

main :: proc() {
	register: sr.ic74595 = sr.init()

	sr.setSRCLR(&register, true)

	sr.setSER(&register, true)
	sr.setSRCLK(&register, false)
	sr.setSRCLK(&register, true)
	sr.setSER(&register, false)

	for _ in 0 ..< 7 {
		sr.setSRCLK(&register, false)
		sr.setSRCLK(&register, true)
	}

	fmt.println(register.shiftregister)
	fmt.println(register.outprime)
	fmt.println()

	sr.setSRCLK(&register, false)
	sr.setSRCLK(&register, true)

	fmt.println(register.shiftregister)
	fmt.println(register.outprime)
	fmt.println()

	sr.setSRCLK(&register, false)
	sr.setSRCLK(&register, true)

	fmt.println(register.shiftregister)
	fmt.println(register.outprime)
	fmt.println()
}
