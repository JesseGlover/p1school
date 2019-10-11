public with sharing class Project1Test {

    public Project1Test() {

        Integer a  = Project1.fibonacci(-1);
        System.debug('output: ' + a);

        System.debug('Factorial: ' + Project1.factorial(-1));

        System.debug('Accounts: ' + Project1.getAccountsForAGivenState(State.CA));
        System.debug('Accounts: ' + Project1.getAccountsForAGivenState(State.VA));


    }
}
