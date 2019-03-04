public String word(int length, String partOfSpeech, int x, int y) {
  ans += getFirstLetter();
  for(int j = 0;j<length - 1;j++) {
    String c = ans.substring(j, j + 1);
    ans += getNextLetter(c);
  }
  if(threeLetterWords.indexOf(ans) != -1){
    if(prevAns.indexOf(ans) == -1){ text(ans, x, y); x+= 200; }
      prevAns.add(ans);
  }
  return ans;
}
