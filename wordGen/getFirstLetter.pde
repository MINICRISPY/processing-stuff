// This method chooses the first letter based on some proportions I found online
private int rand;
public String getFirstLetter() {
  rand = (int)random(0, 15501);
  if(rand < 1229) { vCount++; return "a"; } rand -= 1229;
  if(rand < 599) { cCount++; return "b"; } rand -= 599;
  if(rand < 1317) { cCount++; return "c"; } rand -= 1317;
  if(rand < 640) { cCount++; return "d"; } rand -= 640;
  if(rand < 634) { vCount++; return "e"; } rand -= 634;
  if(rand < 435) { cCount++; return "f"; } rand -= 435;
  if(rand < 458) { cCount++; return "g"; } rand -= 458;
  if(rand < 582) { cCount++; return "h"; } rand -= 582;
  if(rand < 524) { vCount++; return "i"; } rand -= 524;
  if(rand < 152) { cCount++; return "j"; } rand -= 152;
  if(rand < 205) { cCount++; return "k"; } rand -= 205;
  if(rand < 512) { cCount++; return "l"; } rand -= 512;
  if(rand < 914) { cCount++; return "m"; } rand -= 914;
  if(rand < 353) { cCount++; return "n"; } rand -= 353;
  if(rand < 524) { vCount++; return "o"; } rand -= 524;
  if(rand < 1788) { cCount++; return "p"; } rand -= 1788;
  if(rand < 242) { cCount++; return "q"; } rand -= 242;
  if(rand < 532) { cCount++; return "r"; } rand -= 532;
  if(rand < 1620) { cCount++; return "s"; } rand -= 1620;
  if(rand < 952) { cCount++; return "t"; } rand -= 952;
  if(rand < 188) { vCount++; return "u"; } rand -= 188;
  if(rand < 412) { cCount++; return "v"; } rand -= 412;
  if(rand < 299) { cCount++; return "w"; } rand -= 299;
  if(rand < 94) { cCount++; return "x"; } rand -= 94;
  if(rand < 75) { vCount++; return "y"; } rand -= 75;
  if(rand < 221) { cCount++; return "z"; } rand -= 221;
  return ".";
}
