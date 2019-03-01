void setup() {
  background(#FFFFFF);
  size(1000, 1000);
}
public char c(){
   String consonants = "BCDFGHJKLMNPQRSTVWXZ";
   int a = (int)random(0, 19);
   char c = consonants.charAt(a);
   print(c);
   return c;
}public char v(){
   String vowels = "AEIOUY";
   int a = (int)random(0, 5);
   char c = vowels.charAt(a);
   print(c);
   return c;
}public char p(){
   String punctuations = " .,!?-/";
   int a = (int)random(0, 5);
   char c = punctuations.charAt(a);
   return c;
}
void draw() {
  textSize(32);
  fill(0, 0, 0);
  int x = i*100 + 100;
  int y = 100;
  for(int i = 0;i < 8;i++) {
    text(c(), x, y);
    text(v(), x, y);
    text(c(), x, y);
    if(x == 1000){
     x = 0;
     y += 100;
    }
}