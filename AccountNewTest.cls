@isTest
public class AccountNewTest
{
    static testMethod void addNewAccount()
    {
        Account acc=new Account();
        acc.Name='BOFA BANK';
        acc.NumberOfEmployees=12;
        insert acc;
        }
        
        static testMethod void addNewAccountWithoutAccName()
        {
            Account acc=new Account();
            acc.Name='Steve Account';
            acc.NumberOfEmployees=12;
            insert acc;
            }
           }