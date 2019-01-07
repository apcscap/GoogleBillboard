public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
    //your code here 
    findFirst10PrimeDigits();
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here  
    if(dNum == 2) return true;
    for(int i=2;i<=Math.sqrt(dNum);i++)
    	if(dNum % i == 0)
    		return false;
    return true;  
}
public void findFirst10PrimeDigits() {
	for(int i=2;i<e.length()-10;i++) {
    	String sub = e.substring(i, i+10);
    	if(isPrime(int(sub))) {
    		print(sub);
    		break;
    	}
    }
}
