public class CoffeMaker {
  public String brand;
  public Integer capacity;

  // create a method called makeCoffee
  // it should be available everywhere
  //it doesn't need any extra data when being called
  // it doesn't return any value
  // it needs an object while being called

  public void makeCoffee() {
    System.debug('Add Water...');
    System.debug('Add Coffee...');
    System.debug('Place the Cup');
    System.debug('Press the button...');
    System.debug('Now Enjoy your coffee');
  }
  // create a method called setTimer
  // it should be available everywhere
  // it needs an object while being called(not static)
  // it doesn't return any value
  //it accept whole number as minute
  // and print out setting timer for xx minutes
  public void setTimer(Integer num) {
    System.debug('setting timer for ' + num + ' minutes');
  }

 // Create a public void method called clean
 // it does not have any method parameter
 // print message : cleaning the coffe maker
 // in your anon-apex, call the method
 public void clean(){
    System.debug('cleaning the coffe maker'); 
    
 }

 
 // Create a public void method called addWater
 // it expect the caller to pass Integer value (it has Integer method parameter)
 // print the message : Adding XX ounce of water (replace the xx with what caller passed)
 // in your anon-apex, call the method
 public void addWater(Integer num){

    System.debug('Adding ' + num + ' ounce of water '); 
    

 }

  // Create a public void method called addFlavor
  // it expect the caller to pass Integer value (it has String method parameter)
  // print the message : Adding XX Flavor to the Coffee
  // in your anon-apex, call the method
 public void addFlavor (String flavor){
    System.debug('Adding ' + flavor + ' Favor to the Coffee'); 
    
 }

// Create public void method called setStrength
// it expect you to pass two data when being used
// strength as String
// scoops as Integer
// print below message
// setting the strength of coffee to XX
// with xx scoop of coffee bean
 public void setStrngth(String strength, Integer scoops){

    System.debug('setting the strength of coffee to '
                + strength + ' with ' + scoops
                + ' scoop of coffee bean'); 
    

 }

}