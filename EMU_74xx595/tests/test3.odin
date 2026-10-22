package main
import sr "../"
import fmt "core:fmt"

main :: proc() {
	instance1: sr.ic74595 = sr.init()

	sr.setSER(&instance1, true)
	sr.setSRCLR(&instance1, true)
	sr.setOE(&instance1, true)
	for _ in 0 ..< 3 {
		sr.setSRCLK(&instance1, false)
		sr.setSRCLK(&instance1, true)
	}
	fmt.println("SHIFT REGISTER:", instance1.shiftregister)

	sr.setRCLK(&instance1, false)
	sr.setRCLK(&instance1, true)

	fmt.println("OUTPUT:", instance1.outfinal)
}
