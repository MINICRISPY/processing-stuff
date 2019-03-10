import java.io.*;
import java.util.*;
int x = 100; // 325 for center
int y = 100; //225 for center
String k;
String ans;
String vowels = "aeiouy";
String consonants = "bcdfghjklmnpqrstvwxz";
String[] wordsArray;
ArrayList<String> words = new ArrayList<String>();
ArrayList<String> vArray = new ArrayList<String>(6);

void setup(){
  size(800, 500);
  background(#FFFFFF);
  File file = new File("C:\\Users\\c3po7\\Documents\\GitHub\\processing-stuff\\lag_bug_dog\\english5000.txt");
  wordsArray = loadStrings(file);
  for(int i = 0;i < wordsArray.length;i++){
    words.add(wordsArray[i]); 
  }
}
public boolean isV(String c) {
  for(int i = 0;i < vArray.size();i++)
    vArray.add(vowels.substring(i, i + 1));
  for(String d : vArray) {
    if(d.equals(c)) return true;
  }
  return false;
}
void draw() {
}
void keyPressed() {
  int count = 0;
  boolean isKey = (vowels.indexOf(key) != -1 || consonants.indexOf(key) != -1);
  k = Character.toString(key);
  int l = (int)random(3, 6);
  boolean done = false;
  ans = isKey ? word(l, k) : word(l);
  while(!done) {
    if(words.indexOf(ans) != -1 && ans.length() == l){ // Checks if the word is a real word
      PFont font;
      font = createFont("Monospaced.plain", 64);
      textSize(64);
      textFont(font);
      fill(0, 0, 0);
      if(x == 100 && y == 100) {
        background(#FFFFFF);
      }
      text(ans, x, y);
      x += 32*l + 64;
      if(x > 500) {
        x = 100;
        y += 100;
        if(y > 450) {
          x = 100;
          y = 100;
        }
      }
      ans = "";
      done = true;
    }
    else {
      ans = "";
      ans = isKey ? word(l, k) : word(l);
    }
  }
}
