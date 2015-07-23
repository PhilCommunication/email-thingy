@isTest
private class TestVerifyDate {

    @isTest static void testCheckDates_plus_2_Days() {
        Date date1 = Date.today();
        Date date2 = date1.addDays(32);
        
        Date result = VerifyDate.CheckDates(date1, date2);
        
        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
        Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
        
        System.assertEquals(lastDay, result);
    }
    
    @isTest static void testCheckDates_plus_1Month_2Days() {
        Date date1 = Date.today();
        Date date2 = date1.addDays(2);
        
        Date result = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, result);
    }
    
}