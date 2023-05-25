List<String> cars = new List<String>{ 'Ford', 'Toyota', 'BMW' };
System.debug(cars);

cars.add('Mercedes');
cars.add('Honda');
cars.set(1, 'Tesla');
System.debug(cars);

Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);
cars.remove(2);
System.debug(cars);
System.debug(cars.get(3));
cars.clear();
System.debug(cars);
cars.add('Toyota');
System.debug(cars);

List<String> names = new List<String>{
  'Shay',
  'Ronaldo',
  'John',
  'Tom',
  'Peter',
  'Nicko',
  'Tom',
  'shay',
  'Adam'
};

Set<String> employee = new Set<String>();

System.debug(names);
System.debug(names.size());
System.debug(employee);
System.debug(employee.size());

Integer count = 0;

for (String eachName : names) {
  employee.add(eachName);
}
System.debug(employee);

System.debug(employee.size());

for (String eachName : names) {
  if (eachName == 'Shay') {
    employee.remove(eachName);
    count++;
  }
}
System.debug(employee);
System.debug(count);
