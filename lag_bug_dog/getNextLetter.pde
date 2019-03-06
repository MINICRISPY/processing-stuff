// This method chooses the next letter based on the letter before it (Currently only 
private int randV;
private int randC;
public String getNextLetter(String c) {
  randV = (int)random(0, 6223);
  randC = (int)random(0, 9289);
  if(vowels.indexOf(c) == -1) {
    if(randV < 1260) { return "a"; } randV -= 1260;
    if(randV < 1864) { return "e"; } randV -= 1864;
    if(randV < 1133) { return "i"; } randV -= 1133;
    if(randV < 1191) { return "o"; } randV -= 1191;
    if(randV < 447) { return "u"; } randV -= 447;
    if(randV < 328) { return "y"; } randV -= 328;
  }else{
    if(randC < 231) { return "b"; } randC -= 231;
    if(randC < 421) { return "c"; } randC -= 421;
    if(randC < 670) { return "d"; } randC -= 670;
    if(randC < 358) { return "f"; } randC -= 358;
    if(randC < 315) { return "g"; } randC -= 315;
    if(randC < 918) { return "h"; } randC -= 918;
    if(randC < 16) { return "j"; } randC -= 16;
    if(randC < 107) { return "k"; } randC -= 107;
    if(randC < 617) { return "l"; } randC -= 617;
    if(randC < 405) { return "m"; } randC -= 405;
    if(randC < 1077) { return "n"; } randC -= 1077;
    if(randC < 282) { return "p"; } randC -= 282;
    if(randC < 18) { return "q"; } randC -= 18;
    if(randC < 934) { return "r"; } randC -= 934;
    if(randC < 974) { return "s"; } randC -= 974;
    if(randC < 1411) { return "t"; } randC -= 1411;
    if(randC < 172) { return "v"; } randC -= 172;
    if(randC < 325) { return "w"; } randC -= 325;
    if(randC < 27) { return "x"; } randC -= 27;
    if(randC < 11) { return "z"; } randC -= 11;
  }
  return ".";
}
