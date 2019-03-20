public String word(int length) { // Makes the word
  ans += getFirstLetter();
  for(int j = 0;j < length - 1;j++) {
    String c = ans.substring(j, j + 1);
    ans += getNextLetter(c);
  }
  return ans;
}
public String word(int length, String k) {
  ans += k;
  for(int j = 0;j < length - 1;j++) {
    String c = ans.substring(j, j + 1);
    ans += getNextLetter(c);
  }
  return ans;
}
