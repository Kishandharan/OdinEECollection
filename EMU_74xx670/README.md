## Main data type declarations
### ic74670 :: struct
``` 
ic74670 :: struct{
  inp: [4]bool,
  wraddr: [2]bool, 
  readdr: [2]bool,
  out: [4]Tristate,
  nwe: bool,
  nre: bool,
  mem: [4][4]bool
};
```
Data type of an emulated 74xx670 instance.

### Tristate :: enum
``` 
Tristate :: enum {
	ON,
	OFF,
	FL,
}
```
Data type for representing Tristate logic.

## Methods
| Method | Signature | Functionality
|---|---|---|
| `memInit` | `memInit() -> ic74670` | Initializes an ic74670 struct instance with appropriate values and returns it |
| `setNWE` | `setNWE(mem: ^ic74670, bit: bool)` | Changes the Write Enable Signal. |
| `setNRE` | `setNRE(mem: ^ic74670, bit: bool)` | Changes the Read Enable Signal | 
| `setWRADDR` | `setWRADDR(mem: ^ic74670, bit1: bool, bit2: bool)` | Changes the Write Address bits |
| `setREADDR` | `setREADDR(mem: ^ic74670, bit1: bool, bit2: bool)` | Changes the Read Address bits |
| `setINP` | `setINP(mem: ^ic74670, bit1: bool, bit2: bool, bit3: bool, bit4: bool)` | Changes the data input bits |
| `getOUT` | `getOUT(mem: ^ic74670) -> [4]Tristate` | Returns the four tristate outputs |

