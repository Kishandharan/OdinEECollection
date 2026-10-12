## Main data type declarations
### Mem :: struct
``` 
Mem :: struct{
  inp: [4]bool,
  wraddr: [2]bool, 
  readdr: [2]bool,
  out: [4]Tristate,
  nwe: bool,
  nre: bool,
  mem: [4][4]bool
};
```
Data type which you will use to create a 74xx670 emulated instance.
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
This method initializes a `Mem` struct with the appropriate initial values and returns it. It takes no arguments. Its return type is `Mem`. Initialization values:
| Pin | Pin Type | Initialized Value | 
|---|---|---|
| Data Input | Input | 0, 0, 0, 0 | 
| Write Address | Input | 0, 0 |
| Read Address | Input | 0, 0 | 
| Output (__This is tristate__) | Output | .FL, .FL, .FL, .FL |
| Write Enable (__active low__) | Input | 1 | 
| Read Enable (__active low__) | Input | 1 |
| Memory | Internal Memory Grid | 0 (__In all memory cells__) |

