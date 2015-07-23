trigger AccountAddressTrigger on Account (before insert) {

    for(Account a : Trigger.New) {
        if(a.BillingPostalCode==null){
            System.debug('BillingPostalCode is null');
        } else {
            System.debug('BillingPostalCode is not null');
            if(a.Match_Billing_Address__c){
                a.ShippingPostalCode = a.BillingPostalCode;
                System.debug('ShippingPostalCode is BillingPostalCode');
            }
        }
    }
}