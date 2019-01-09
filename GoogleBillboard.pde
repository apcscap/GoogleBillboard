public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763";  
public void setup()  
{            
    //your code here 
    findFifth10DigitsWithSum49();
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here  
    if(dNum < 2) return false;
    for(int i=2;i<=Math.sqrt(dNum);i++)
    	if(dNum % i == 0)
    		return false;
    return true;  
}
public boolean sumEquals49(String dNum)
{
	int sum = 0;
	for(int i=0;i<dNum.length();i++)
		sum += Character.getNumericValue(dNum.charAt(i));
	if (sum == 49)
		return true;
	return false;
}
public void findFirst10PrimeDigits() {
	for(int i=1;i<e.length()-10;i++) {
    	String sub = e.substring(i, i+10);
    	if(isPrime(Double.parseDouble(sub))) {
    		println(sub);
    		break;
    	}
    }
}
public void findFifth10DigitsWithSum49() {
	for(int i=1;i<e.length()-10;i++) {
		String sub = e.substring(i, i+10);
		if(sumEquals49(sub)) {
			println(sub);
		}
	}
}
