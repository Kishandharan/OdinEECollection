package shiftregister

ic74595 :: struct{
  outfinal: [8]int,
  outbuffer: [8]bool,
  shiftregister: [8]bool,
  ser: bool, 
  srclr: bool,
  srclk: bool, 
  rclk: bool, 
  oe: bool
};

init :: proc() -> ic74595{
  shift1 : ic74595;

  shift1.ser = false;
  shift1.srclr = false;
  shift1.srclk = false;
  shift1.rclk = false;
  shift1.oe = true;

  for i in 0..<8{
    shift1.outfinal[i] = -1;
    shift1.shiftregister[i] = 0;
    shift1.outbuffer = 0;
  }

  return shift1;
}
