package shiftregister

ic74595 :: struct {
	outfinal:      [8]int,
	outbuffer:     [8]bool,
	shiftregister: [8]bool,
	ser:           bool,
	srclr:         bool,
	srclk:         bool,
	rclk:          bool,
	oe:            bool,
}

init :: proc() -> ic74595 {
	shift1: ic74595

	shift1.ser = false
	shift1.srclr = false
	shift1.srclk = false
	shift1.rclk = false
	shift1.oe = true

	for i in 0 ..< 8 {
		shift1.outfinal[i] = -1
		shift1.shiftregister[i] = false
		shift1.outbuffer = false
	}

	return shift1
}

setSER :: proc(reg: ^ic74595, bit: bool) {
	reg.ser = bit
}

setSRCLR :: proc(reg: ^ic74595, bit: bool) {
	reg.srclr = bit
	if !bit {
		for i in 0 ..< 8 {
			reg.shiftregister[i] = false
		}
	}
}

setSRCLK :: proc(reg: ^ic74595, bit: bool) {
	prevSRCLK := reg.srclk
	reg.srclk = bit

	if !prevSRCLK && bit {
		if reg.srclr {
			// Shift logic
			for i := 7; i >= 1; i -= 1 {
				reg.shiftregister[i] = reg.shiftregister[i - 1]
			}
			reg.shiftregister[0] = reg.ser
		}
	}
}

setRCLK :: proc(reg: ^ic74595, bit: bool) {
	if reg.rclk == false && bit == true {
		for i in 0 ..< 8 {
			reg.outbuffer[i] = reg.shiftregister[i]
		}

		if reg.oe == false {
			for i in 0 ..< 8 {
				reg.outfinal[i] = 1 if reg.outbuffer[i] == true else 0
			}
		}
	}

	reg.rclk = bit
}

setOE :: proc(reg: ^ic74595, bit: bool) {
	reg.oe = bit
	if bit == false {
		for i in 0 ..< 8 {
			reg.outfinal[i] = 1 if reg.outbuffer[i] == true else 0
		}
	} else {
		for i in 0 ..< 8 {
			reg.outfinal[i] = -1
		}
	}
}
