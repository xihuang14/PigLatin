public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
String a = new String("aeiou");
for(int i =0; i<sWord.length(); i++){
	for(int z=0; z<a.length(); z++){
		if(sWord.charAt(i) == a.charAt(z))
			return i;
		}
		if(sWord.substring(0,2).equals("qu"))
			return -10;

	}
	return -1;

}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{

	int index = findFirstVowel(sWord);
		if(index == -10){
			return sWord.substring(2) + "quay";
		}

		if(index == -1)
		{
			return sWord + "ay";
		}
		if(index == 0){
			return sWord + "way";
		}
			

		if(index>= 1){
			return sWord.substring(index) + sWord.substring(0,index) + "ay";
		}
		else 
		{
			return "ERROR";
		}
	}

