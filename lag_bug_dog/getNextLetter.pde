// This method chooses the next letter based on the letter before it (Currently only alternates consonant and vowel)    
private int randV = 0;
private int randC = 0;
int vCount;
int cCount;
public String getNextLetter(String c) {
  randV = (int)random(0, 6223);
  randC = (int)random(0, 9289);
  int num;
  if(vowels.indexOf(c) == -1)
    num = Math.pow((randV), vCount);
  else
    num = Math.pow((randC), cCount);
  if() {
    vCount++;
    return getV(randV);
  } else {
    cCount++;
    return getC(randC);
  }
}
