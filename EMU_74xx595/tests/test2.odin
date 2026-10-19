package main
import sr "../"
import fmt "core:fmt"

main :: proc() {
	instance1: sr.ic74595 = sr.init()

	sr.setSRCLR(&instance1, true)
	sr.setSER(&instance1, true)
	sr.setSRCLK(&instance1, true)
	sr.setSRCLK(&instance1, false)
	sr.setSRCLR(&instance1, true)
	sr.setSER(&instance1, true)
	sr.setSRCLK(&instance1, true)
	sr.setSRCLK(&instance1, false)
	sr.setSRCLR(&instance1, true)
	sr.setSER(&instance1, false)
	sr.setSRCLK(&instance1, true)
	sr.setSRCLK(&instance1, false)

	fmt.println(instance1.shiftregister)
	sr.setSRCLR(&instance1, false)
	fmt.println(instance1.shiftregister)
	sr.setSRCLR(&instance1, true)
	fmt.println(instance1.shiftregister)


	// Everything seems to work.
	// TODO: Add more methods
}
