@isTest
public class TestKeyFieldCheck {
    static testMethod void insertLeads(){
        List<Lead> leadsToInsert = new List<Lead>();
        Lead basicLead = new Lead(Company = 'Derpalooza', LastName = 'TestLead');
        Lead complexLead = new Lead(Company = 'Derpalooza', FirstName = 'Test', LastName = 'ComplexLead', Phone = '1234567890');
        leadsToInsert.add(basicLead, complexLead);
        insert leadsToInsert;
    }
}