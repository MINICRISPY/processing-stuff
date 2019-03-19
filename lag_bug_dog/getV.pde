String getV(int rand) {
  if(rand < 1260) return "a"; rand -= 1260;
  if(rand < 1864) return "e"; rand -= 1864;
  if(rand < 1133) return "i"; rand -= 1133;
  if(rand < 1191) return "o"; rand -= 1191;
  if(rand < 447) return "u"; rand -= 447;
  if(rand < 328) return "y"; rand -= 328;
  return ".";
}
