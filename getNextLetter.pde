// This method chooses the next letter based on the letter before it (Currently only alternates consonant and vowel)    
int randV = 0;
int randC = 0;
double vCount;
double cCount;
boolean vowel;
public String getNextLetter(String c) {
  randV = (int)random(0, 6223);
  randC = (int)random(0, 9289);
  /*double num;
  if(vowels.indexOf(c) == -1) {
    num = Math.pow((randV/6223.0), vCount);
    vowel = true;
  } else {
    num = Math.pow((randC/9289.0), cCount);
    vowel = false;
  }
  if(vowel) {
    return getV((int)num*6223);
  } else {
    return getC((int)num*9289);
  }*/
  if(vowels.indexOf(c) == -1)
    return getV(randV);
  else
    return getC(randC);
}