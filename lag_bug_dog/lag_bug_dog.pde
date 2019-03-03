import java.io.*;
import java.util.*;
String vowels = "aeiouy";
String consonants = "bcdfghjklmnpqrstvwxz";
String ans = "";
String str;
String[] wordsArray;
ArrayList<String> words = new ArrayList<String>();
ArrayList<String> threeLetterWords= new ArrayList<String>();

void setup(){
  size(800, 500);
  background(#FFFFFF);
  File file = new File("C:\\Users\\c3po7\\Documents\\GitHub\\processing-stuff\\lag_bug_dog\\english5000.txt");
  wordsArray = loadStrings(file);
  for(int i = 0;i < wordsArray.length;i++){
    words.add(wordsArray[i]); 
  }
  for(int i = 0;i<words.size();i++){
    if(words.get(i).length() == 3) threeLetterWords.add(words.get(i));  
  }
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
void keyPressed() {
  if(key == ENTER) {
    background(#FFFFFF);
    textSize(32);
    fill(0, 0, 0);
    int x = 100;
    int y = 100;
    while( x <= 800 && y <= 400) {
      ans += getFirstLetter();
      for(int j = 0;j<2;j++) {
        String c = ans.substring(j, j + 1);
        ans += getNextLetter(c);
      }
      if(threeLetterWords.indexOf(ans) != -1){ text(ans, x, y); x+= 200; }
      if(x > 800) {
        x = 100;
        y += 100;
      }
      ans = "";
    }
  }
}
