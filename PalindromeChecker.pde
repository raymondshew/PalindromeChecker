public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    if (palindrome(lines[i]) == true) println(lines[i] + " IS a palidrome.");
    else println(lines[i] + " is NOT a palidrome.");
  }
}
public boolean palindrome(String word) {
  // remove spaces, punctuation, and capitalization
  
  word = charsOnly(word);
  // split word at middledle
  int middle = word.length()/2;
  String front = word.substring(0, middle+1);
  String back = word.substring(middle);
  if (word.length()%2 == 0) { // even number of chars
    front = word.substring(0, middle);
    back = word.substring(middle);
  }
  else { // odd number of chars
    front = word.substring(0, middle+1);
    back = word.substring(middle);
  }
  
  // reverse one string
  back = reverse(back);
  
  // compare the two strings, return true if both strings are equal
  if (front.equals(back)) return true;
  return false;
}
public String reverse(String word) {
  String s = new String();
  for (int i = word.length()-1; i >= 0; i--) {
    s += word.substring(i, i+1);
  }
  return s;
}
public String charsOnly(String word) {
  String s = new String();
  for (int i = 0; i < word.length(); i++) {
    if (Character.isLetter(word.charAt(i))) s += word.charAt(i);
  }
  return s.toLowerCase();
}
