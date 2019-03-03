String vowels = "aeiouy";
String consonants = "bcdfghjklmnpqrstvwxz";
String ans = "";
void setup() {
  size(800, 500);
  background(#FFFFFF);
}
ArrayList<String> cArray = new ArrayList<String>(20);
public String c() {
  for(int i = 0;i<cArray.size();i++){
    cArray.add(consonants.substring(i, i + 1));
  }
  int a = (int)random(0, 19);
  String c = consonants.substring(a, a + 1);
  print(c);
  return c;
} 
ArrayList<String> vArray = new ArrayList<String>(6);
public String v() {
  for(int i = 0;i<vArray.size();i++){
    vArray.add(vowels.substring(i, i + 1));
  }
  int a = (int)random(0, 5);
  String c = vowels.substring(a, a + 1);
  print(c);
  return c;
}
public String p() {
  String punctuations = " .,!?-/";
  int a = (int)random(0, 5);
  String c = punctuations.substring(a, a + 1);
  return c;
}
public boolean isC(String c) {
  for(String d : cArray) {
    if(d.equals(c)) return true;
  }
  return false;
}
void draw() {
}
void bigPrint() {
 print("big"); 
}
void keyPressed() {
  if(key == ENTER) {
    background(#FFFFFF);
    textSize(32);
    fill(0, 0, 0);
    int x = 100;
    int y = 100;
    for(int i = 0;i < 12;i++) {
      ans += getFirstLetter();
      for(int j = 0;j<2;j++) {
        String c = ans.substring(j, j + 1);
        String a = getNextLetter(c);
        print(a, c);
        ans += a;
        //ans += getNextLetter(c);
      }
      text(ans, x, y);
      x+= 200;
      if(x > 600) {
        x = 100;
        y += 100;
      }
      ans = "";
    }
  }
}engrish.txt