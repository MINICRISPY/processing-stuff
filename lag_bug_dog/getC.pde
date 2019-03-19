String getC(int rand) {
    if(rand < 231) return "b"; rand -= 231;
    if(rand < 421) return "c"; rand -= 421;
    if(rand < 670) return "d"; rand -= 670;
    if(rand < 358) return "f"; rand -= 358;
    if(rand < 315) return "g"; rand -= 315;
    if(rand < 918) return "h"; rand -= 918;
    if(rand < 16) return "j"; rand -= 16;
    if(rand < 107) return "k"; rand -= 107;
    if(rand < 617) return "l"; rand -= 617;
    if(rand < 405) return "m"; rand -= 405;
    if(rand < 1077) return "n"; rand -= 1077;
    if(rand < 282) return "p"; rand -= 282;
    if(rand < 18) return "q"; rand -= 18;
    if(rand < 934) return "r"; rand -= 934;
    if(rand < 974) return "s"; rand -= 974;
    if(rand < 1411) return "t"; rand -= 1411;
    if(rand < 172) return "v"; rand -= 172;
    if(rand < 325) return "w"; rand -= 325;
    if(rand < 27) return "x"; rand -= 27;
    if(rand < 11) return "z"; rand -= 11;
    return ".";
}
