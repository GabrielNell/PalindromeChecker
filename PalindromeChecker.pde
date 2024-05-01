String givenWord = "no 'X' in Nixon";
public void setup() {
  System.out.println(isPalindrome(preparePhrase(givenWord)));
}

public boolean isPalindrome(String word) {
  for (int i = 0; i < (float)(word.length()) / 2; i++) {
    if (word.charAt(i) != word.charAt(word.length() - i - 1)) {
      return false;
    }
  }
  return true;
}

public String stripToLetters(String word) {
  String editedString = "";
  for (int i = 0; i < word.length(); i++) {
    if (Character.isLetter(word.charAt(i))) {
      editedString = editedString + word.charAt(i);
    }
  }
  return editedString;
}

public String lowercased(String word) {
  return word.toLowerCase();
}

public String preparePhrase(String phrase) {
  return stripToLetters(lowercased(phrase));
}
