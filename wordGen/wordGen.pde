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
ArrayList<String> prevAns = new ArrayList<String>();

void setup(){
  size(800, 500);
  background(#FFFFFF);
  File file = new File("C:\\Users\\c3po7\\Documents\\GitHub\\processing-stuff\\wordGen\\english5000.txt");
  File file2 = new File("H://wordGen\\english5000.txt");
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
  int l = 3;//(int)random(3, 6);
  boolean done = false;
  while(!done) {
  ans = "";
  ans = isKey ? word(l, k) : word(l);
    if(words.indexOf(ans) != -1 && ans.length() == l) { // Checks if the word is a real word and the right length
    
      PFont font = createFont("Monospaced.plain", 64); // Setting up the text
      textSize(64);
      textFont(font);
      fill(0, 0, 0);
      if(x == 100 && y == 100) {
        background(#FFFFFF);
      }
      
      if(prevAns.indexOf(ans) == -1) { // Checks if the word is already on the screen
        text(ans, x, y);
        prevAns.add(ans);
        x += 32*l + 64; // Makes the words appear in a 4x4 grid onscreen, clears the screen once it's full
        if(x > 580) {
          x = 100;
          y += 100;
          if(y > 400) {
            x = 100;
            y = 100;
            prevAns.clear();
          }
        }
      done = true;
      }
    }
  }
}
