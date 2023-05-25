/**
9. Write a program that create a list of strings and print the values that are not equal
 to "Admin" or "Developer" using a for loop and the continue keyword.

 */

List<String> roleList = new List<String>();

roleList.add('Java SDET');
roleList.add('Java Developer');
roleList.add('Cybersecurity Analyst');
roleList.add('Developer');
roleList.add('Data Science');
roleList.add('Salesforce Developer');
roleList.add('Salesforce Architect');
roleList.add('Sales Manager');
roleList.add('Admin');
roleList.add('Marketing Director');

/**
 Write a program that create a list of strings with 10 values and get the count of the items that are not equal 
 to "Admin" or "Developer" using a for loop and the continue keyword.
  */


for (Integer i = 0; i < roleList.size(); i++) {

    String each = roleList.get(i);
  if (each == 'Admin' || each == 'Developer') {
    continue;
  }
 
  System.debug('Value at index #' + i + ' is :' + each);
}

