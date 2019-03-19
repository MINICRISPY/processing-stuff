String getV(int rand) {
  if(rand < 1260) { vCount++; return "a"; } rand -= 1260;
  if(rand < 1864) { vCount++; return "e"; } rand -= 1864;
  if(rand < 1133) { vCount++; return "i"; } rand -= 1133;
  if(rand < 1191) { vCount++; return "o"; } rand -= 1191;
  if(rand < 447) { vCount++; return "u"; } rand -= 447;
  if(rand < 328) { vCount++; return "y"; } rand -= 328;
  return ".";
}