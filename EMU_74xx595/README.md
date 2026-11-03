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

## Methods
| Method | Signature | Functionality |
|---|---|---|
| `init` | `init() -> ic74595` | Initializes an ic74595 struct instance and returns it. See section below for initial values. |
| `setSER` | `setSER(reg: ^ic74595, bit: bool)` | Changes the Serial Input bit |
| `setSRCLR` | `setSRCLR(reg: ^ic74595, bit: bool)` | Changes the Shift Register Clear (active-low) signal |
| `setSRCLK` | `setSRCLK(reg: ^ic74595, bit: bool)` | Changes the Shift Register Clock (rising edge-triggered) signal |
| `setRCLK ` | `setRCLK(reg: ^ic74595, bit: bool)` | Changes the Output Register Clock (rising edge-triggered) signal |
| `setOE` | `setOE(reg: ^ic74595, bit: bool)` | Changes the Output Enable (active-low) signal |
| `getOUT` | `getOUT(reg: ^ic74595) -> [8]int` | Returns the 8 outputs |
| `getOUTPRIME` | `getOUTPRIME(reg: ^ic74595)) -> bool` | Returns the Q7' (Last shift-register bit's previous value) Signal  |

