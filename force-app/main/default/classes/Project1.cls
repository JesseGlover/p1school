public class Project1 {


    /**
     * Return the nth fiboacci number in the fibonacci sequence.
     * It should start 1,1,2,3...
     * */
    public static Integer fibonacci(Integer n) {

        If (n > 1) {
            Integer fibonacci1 = 0;
            Integer fibonacci2 = 1;
            Integer fibonacciTotal = 0;
            
            // for Fibonacci of 2 or more
            for (Integer i = 1; i < n; i++) {
                fibonacciTotal = fibonacci1 + fibonacci2;
                fibonacci1 = fibonacci2;
                fibonacci2 = fibonacciTotal;
            }

            return fibonacciTotal;

        // for Fibonacci of 1 
        }else if (n ==1) {
            return 1;

        // for Fibonacci of 0
        }else if (n == 0) {
            return 0;

        // for Fibonacci of negatives    
        }else{
            System.debug('Bah Humbug');
            return null;
        }
    }
    
    /**
     * Given a string, return its backwards order.
     * */
    public static String reverseString(String s) {

        String backwardString = '';

        for (Integer i = s.length() - 1; i >= 0; i--){
            
            backwardString = backwardString + s.subString(i,i+1);
        }

        return backwardString;
    }
    
    /**
     * Use recursion to compute the factorial of a given number.
     * */
    public static Integer factorial(Integer n) {

        Integer total = 1;

        // For Factorial of 1 or more
        If (n >= 1) {
            for (Integer i = 1; i <= n; i++) {
                total = total * i;
            }

        // For factorial of 0 by definition
        }else if (n ==0 ){
            total =1;

        // Anything else
        }else{
            System.debug('Bah Humbug');
            total = null;
        }

        return total;
    }
    
    /**
     * Given a string, determine if it is a palindrome.
     * */
    public static Boolean isPalindrome(String s) {

        If (s.compareTo(reverseString(s)) == 0){
            return true;
        }else{
            return false;
        }
    }
    
    /**
     *  Given a state, return the accounts in that state.
     * 	I only want the accounts that have a contact who works at the same place as the account.
     * */
    public static List<Account> getAccountsForAGivenState(State s) {

       String theState = s.name();
       List<Account> accountState = new List<Account>();
       accountState = [SELECT Name, Id, BillingState FROM Account WHERE BillingState =: theState];

       List<Contact> contactState = new List<Contact>();
       contactState = [SELECT AccountID, MailingState FROM Contact WHERE MailingState =: theState];

       List<Account> returnAccounts = new List<Account>();
       for (Account a: accountState){

           for (Contact b: contactState) {
                If ((a.Id == b.AccountID) && (a.BillingState == b.MailingState)) {
                    returnAccounts.add(a);
                }
           }
       }
        return returnAccounts;  
    }
    
    /**
     * For each student, get the grade for each of their classes.
     * */
    public static Map<Id, Map<Id, Double>> getClassGrades() {

        
        
        return new Map<Id, Map<Id, Double>>();
    }
  
}
