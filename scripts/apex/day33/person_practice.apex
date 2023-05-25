Person p3 = new Person();
p3.setPersonInfo('Adem', 18, 180);
p3.describePerson();
p3.changeName('Mardan');
p3.printName();
p3.setAgeAndHeight(21, 190);
p3.printAge();
p3.describePerson();

String uppercaseName = p3.getAllCapName();
System.debug('uppercaseName value is : ' + uppercaseName);
// uppercaseName value is : MARDAN

System.debug('p3.getAllCapName() value is : ' + p3.getAllCapName());
// p3.getAllCapName() value is : MARDAN

Boolean isAdult = p3.isEligibleForVote();
System.debug('isAdult value is : ' + isAdult);
//isAdult value is : true
p3.setAgeAndHeight(16, 180);

System.debug('p3.isEligibleForVote value is : ' + p3.isEligibleForVote());
// p3.isEligibleForVote value is : false

System.debug('p3.getAgeGroup() value is : ' + p3.getAgeGroup());
//p3.getAgeGroup() value is : teenager


Boolean isHigher = p3.IsHigherThan(170);
System.debug('Nurzat is higher than 170? ' + isHigher );
// Nurzat is higher than 170? true
System.debug('p3.isHigherThan() value is : ' + p3.isHigherThan(190));
// p3.isHigherThan(190) value is : false