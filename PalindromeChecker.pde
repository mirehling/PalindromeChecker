public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  int a = 0;
  for(int i = 0; i < word.length(); i++){
  
    if(Character.isLetter(word.charAt(i)) == true){
      a = a + 1;
    }
  }
  String q = "";
  String p = "";
  String s = "";
  word.toLowerCase();
  for(int i = 0; i < word.length(); i++){
    if(word.substring(i, i+1).equals(" ")){
      p = p + "";
    }
    else
      p = p + word.substring(i, i+1);
  }
  for(int i = 0; i < p.length(); i++){
    if(Character.isLetter(p.charAt(i)) == true){
      q = q + p.substring(i, i+1);
    }
  }
  for(int i = q.length()-1; i > -1; i--){
    s = s + q.substring(i, i+1);
  }
  if(s.equals(word))
    return true;
  else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i > -1; i--){
    str = str + str.substring(i, i+1);
  }
    return sNew;
}

