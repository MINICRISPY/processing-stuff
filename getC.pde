String getC(int rand) {
    if(rand < 231) { cCount++; return "b"; } rand -= 231;
    if(rand < 421) { cCount++; return "c"; } rand -= 421;
    if(rand < 670) { cCount++; return "d"; } rand -= 670;
    if(rand < 358) { cCount++; return "f"; } rand -= 358;
    if(rand < 315) { cCount++; return "g"; } rand -= 315;
    if(rand < 918) { cCount++; return "h"; } rand -= 918;
    if(rand < 16) { cCount++; return "j"; } rand -= 16;
    if(rand < 107) { cCount++; return "k"; } rand -= 107;
    if(rand < 617) { cCount++; return "l"; } rand -= 617;
    if(rand < 405) { cCount++; return "m"; } rand -= 405;
    if(rand < 1077) { cCount++; return "n"; } rand -= 1077;
    if(rand < 282) { cCount++; return "p"; } rand -= 282;
    if(rand < 18) { cCount++; return "q"; } rand -= 18;
    if(rand < 934) { cCount++; return "r"; } rand -= 934;
    if(rand < 974) { cCount++; return "s"; } rand -= 974;
    if(rand < 1411) { cCount++; return "t"; } rand -= 1411;
    if(rand < 172) { cCount++; return "v"; } rand -= 172;
    if(rand < 325) { cCount++; return "w"; } rand -= 325;
    if(rand < 27) { cCount++; return "x"; } rand -= 27;
    if(rand < 11) { cCount++; return "z"; } rand -= 11;
    return ".";
}