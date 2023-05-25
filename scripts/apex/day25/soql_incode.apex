List<Account> allAccounts = [SELECT Name, phone, AnnualRevenue FROM Account];

for(Account each : allAccounts) {
    System.debug('Current value : ' + each.Name);
}
    