public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
int beginIndex=2;
int endIndex=12;
double dNum;

public void setup()  
{           
  String digits = e.substring(beginIndex, endIndex);
  dNum = Double.parseDouble(digits);
  for (int i = 0; i<100; i++){
    if(isPrime(dNum) == true){
    System.out.println(dNum);
    break;}
    else{
    beginIndex++;
    endIndex++;
    digits = e.substring(beginIndex, endIndex);
    dNum = Double.parseDouble(digits);}
  }
}
   
public boolean isPrime(double num)
{
  if (num>1)
  {
  for (int i=2; i<=Math.sqrt(num); i++)
  {
  if(num%i == 0)
  return false;
  }
  return true;
  }
  return false;
}