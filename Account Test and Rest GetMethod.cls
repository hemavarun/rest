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
       /*@RestResource(urlMapping='/v3/accounts/*')
global with sharing class AccountRESTService_V3 {

    @HttpGet
    global static AccountWrapper doGet() {
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    AccountWrapper response = new AccountWrapper();
    
    String accountId = req.requestURI.substring(req.requestURI.;astIndexOf('/')+1);
    
    if(doSearch(accountId)) {
        searchAccounts(req, res, response);
        
        }
        else {
            findAccount(res, response, accountId);
        }
        return response;
        }
        
        //If the item to the right of the last found slash is "accounts", the request went to v3/accounts?Name=united
        // Else the request went to v3/accounts/<something>, which is not a search, but a specific entity
        
        private static boolean doSearch(String accountId) {
        if(accountId == 'account') {
            return true;
            }
            return false;
            }
            
            //If the request came to /v3/accounts, then we want to execute a search
            private static void searchAccounts(RestRequest req, RestResponse res, AccountWrapper response) {
            
            //Use the RestRequest's params to fetch the Name parameter
            String searchTeam = req.params.get('Name');
            
            if(searchTerm == null || searchTeam == '') {
                response.status = 'Error';
                response.message = 'You must provide a Name for your search term.';
                res.StatusCode = 400;
                
                }
                else {
                String searchText = '%'+searchTerm+'%';
                List<Account> searchResults = [SELECT Id, Name, Phone, Website FROM Account WHERE Name LIKE : searchText];
                
                if(searchResults != null && searchResults.size() > 0) {
                response.acctList = searchResults;
                response.message = searchResults.size() + 'Account were found that matched your search term.';
                }
                else {
                response.status = 'Error';
                response.message = 'No Accounts where found based on that Name, please search again.';
                }
            }
        }
        
        //If the request came to /v3/accounts/ (without an Account Id), return an error
        else { 
            response.status = 'Error';
            response.message = 'You must specify an Id.';
            res.StatusCode = 400;
            
            }
        }
            global class AccountWrapper {
            public List<Account> acctList;
            public String status;
            public String message;
            
            public AccountWrapper() {
                acctList = new List<Account>();*/