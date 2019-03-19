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
ArrayList<String> prevArray = new ArrayList<String>();

void setup(){
  size(800, 500);
  background(#FFFFFF);
  File file = new File("C:\\Users\\c3po7\\Documents\\GitHub\\processing-stuff\\lag_bug_dog\\english5000.txt");
  File file2 = new File("H://lag_bug_dog\\english5000.txt");
  wordsArray = loadStrings(file2);
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
  int l = 3;//(int)random(3, 6);
  boolean done = false;
  ans = isKey ? word(l, k) : word(l);
  prevArray.add(ans);
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
      if(prevArray.indexOf(ans) == -1)
        text(ans, x, y);
      else
        ans = isKey ? word(l, k) : word(l);
        text(ans, x, y);
      x += 32*l + 64;
      if(x > 500) {
        x = 100;
        y += 100;
        if(y > 450) {
          x = 100;
          y = 100;
          prevArray.clear();
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