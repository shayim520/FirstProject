BankAccount b1 = new BankAccount();
b1.accountHolder = ' Ali';
b1.accountNumber = 123456789;
b1.balance = 500000;

b1.showDetails();


System.debug('b1.getBalance value is : ' + b1.getBalance());

b1.deposit(5000.1) ; 
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());
//b1.getBalance() value is : 505000.0
b1.deposit(-1222);  //Invalid Number!!!

b1.withdraw(200000);
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());
//b1.getBalance() value is : 305000.0
 b1.withdraw(1000000000);

 BankAccount b2 = new BankAccount();
 b2.setupAccount('Shay', 41177896, 50000000);
 b2.showDetails();
 //Account Holder name: Christina, Number : 987654321, Balance : 1000000
b2.deposit(1000000) ; 

System.debug('b2.getBalance() value is : ' 
            + b2.getBalance());
b2.deposit(-200);  //INVALID NUMBER!!!!
b2.withdraw(500000) ; 
System.debug('b2.getBalance() value is : ' 
            + b2.getBalance());
//b2.getBalance() value is : 1500000
b2.withdraw(3000000) ; 
// CAN NOT WITHDRAW THE MONEY YOU DONT HAVE 

b2.changeName('Shayimardan');
b2.showDetails();