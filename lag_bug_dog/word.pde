public String word(int length) {
  ans += getFirstLetter(); // Makes the word
  for(int j = 0;j < length - 1;j++) {
    String c = ans.substring(j, j + 1);
    ans += getNextLetter(c);
  }
  return ans;
}
