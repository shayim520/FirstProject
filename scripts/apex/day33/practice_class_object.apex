Person p1 = new Person();
p1.name = 'Hakan';
p1.age = 38;
p1.height = 178.5;

//System.debug('p1 value is : ' + p1);
p1.printName();
p1.printAge();
p1.describePerson();

Person p2 = new Person();
p2.name = 'Shay';
p2.age = 39;
p2.height = 177;
//System.debug('p2 value is : ' + p2);
p2.printName();
p2.printAge();
p2.describePerson();
p2.changeName('shay 2.0');
p2.printName();
p2.setAgeAndHeight(26, 177);
p2.describePerson();
p2.setPersonInfo('Shay 3.0', 18, 170.5);
p2.describePerson();
