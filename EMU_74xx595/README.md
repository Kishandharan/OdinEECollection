## Main data type declarations
```
ic74595 :: struct {
	outfinal:      [8]int,
	outbuffer:     [8]bool,
	outprime:      bool,
	shiftregister: [8]bool,
	ser:           bool,
	srclr:         bool,
	srclk:         bool,
	rclk:          bool,
	oe:            bool,
}
```
Data type of an emulated 74xx595 instance. **Note: Tristate logic is represented with int (0 = Logic LOW, 1 = Logic HIGH, -1 = Floating)** 
