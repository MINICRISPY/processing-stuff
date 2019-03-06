public String word(int length, int x, int y) {
  ans += getFirstLetter(); // Makes the word
  for(int j = 0;j<length - 1;j++) {
    String c = ans.substring(j, j + 1);
    ans += getNextLetter(c);
  }
  if(threeLetterWords.indexOf(ans) != -1){ // Checks if the word is three letters long
    if(prevAns.indexOf(ans) == -1){ // Checks if the word has not already been returned
      text(ans, x, y);
      print("a ");
      prevAns.add(ans);
    }
  }
  return ans;
}
