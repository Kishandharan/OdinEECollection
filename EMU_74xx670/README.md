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
Tristate :: enum{
  ON, 
  OFF, 
  FL
};
```

Data type which is used for the Tristate logic within the 74xx670. The outputs of the emulated IC is of this type. 

## Methods
### memInit() 
This procedure initializes a `ic74670` struct with the appropriate initial values and returns it. It takes no arguments. Its return type is `ic74670`. Initialization values:
| Pin | Pin Type | Initialized Value | 
|---|---|---|
| Data Input | Input | 0, 0, 0, 0 | 
| Write Address | Input | 0, 0 |
| Read Address | Input | 0, 0 | 
| Output (__Tristate__) | Output | .FL, .FL, .FL, .FL |
| Write Enable (__Active low__) | Input | 1 | 
| Read Enable (__Active low__) | Input | 1 |
| Memory | Internal Memory Grid | 0 (__In all memory cells__) |

### `setNWE(mem: ^ic74670, bit: bool)`
This procedure allows changing the Write Enable signal. It takes a pointer to an `ic74670` struct instance and a boolean value to which the Write Enable signal has to be changed to. It doesn't return anything.

### `setNRE(mem: ^ic74670, bit: bool)`
This procedure allows changing the Read Enable signal. It takes a pointer to an `ic74670` struct instance and a boolean value to which the Read Enable signal has to be changed to. It doesn't return anything.

### `setWRADDR(mem: ^ic74670, bit1: bool, bit2: bool)`
This procedure allows changing the Write Address bits. It takes a pointer to an `ic74670` struct instance and two boolean values representing the first and second bits of the Write Address respectively (reading from left to right). It doesn't return anything.

### `setREADDR(mem: ^ic74670, bit1: bool, bit2: bool)`
This procedure allows changing the Read Address bits. It takes a pointer to an `ic74670` struct instance and two boolean values representing the first and second bits of the Read Address respectively (reading from left to right). It doesn't return anything.

### `setINP(mem: ^ic74670, bit1: bool, bit2: bool, bit3: bool, bit4: bool)`
This procedure changes the Write Data Input bits. It takes a pointer to an `ic74670` struct instance and 4 boolean values for the 4 bits of the input. It doesn't return anything.

### `getOUT(mem: ^ic74670)`
This procedure returns the 4 Tristate outputs of the emulated chip. It takes a pointer to an `ic74670` struct instance. Its return type is `[4]Tristate`.
