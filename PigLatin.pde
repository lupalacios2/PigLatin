public void setup() {
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}

public void draw() {
 
}

public int findFirstVowel(String sWord) {
  String[] arr = {"a", "e", "i", "o", "u"};
  
  for (int i = 0; i < sWord.length(); i++) {
    for (int j = 0; j < arr.length; j++) {
      if (sWord.substring(i, i + 1).equals(arr[j])) {
        return i;
      }
    }
  }
  
  return -1;
}

public String pigLatin(String sWord) {
  if (findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  } else if (findFirstVowel(sWord) == 0) {
    return sWord + "way";
  } else if (sWord.substring(0, 2).equals("qu")) {
    return sWord.substring(2, sWord.length()) + "quay";
  } else if (findFirstVowel(sWord) != 0) {
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
 
  return "ERROR!";
}
