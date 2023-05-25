/*
Pizza Task:
Attributes:
    size, numberOfCheeseTopping, numberOfPepperoniTopping

    Add a constructor that can set all the fields

Actions:
    calcCost(): returns the totalCost of the pizza

    print out an output like this :
    'Your M size pizza with 2 numberOfCheeseTopping and 3 numberOfPepperoniTopping costs $20.5'

Pizza cost is determined by:
                S: $10 + $2 per cheese topping, $1,5 per pepperoni topping
                M: $12 + $2 per cheese topping, $1,5 per pepperoni topping
                L: $14 + $2 per cheese topping, $1,5 per pepperoni topping

*/

public class Pizza {
   
public String size;
public Integer numberOfCheeseTopping, numberOfPepperoniTopping;

public Pizza(String size, Integer numberOfCheeseTopping, Integer numberOfPepperoniTopping){

    this.size = size;
    this.numberOfCheeseTopping = numberOfCheeseTopping;
    this.numberOfPepperoniTopping = numberOfPepperoniTopping;

}

public Decimal calcCost(){

    Decimal startingPrice = (size == 's')? 10 : (size == 'm')? 12 : 14;
    Decimal totalPrice = startingPrice + (2*numberOfCheeseTopping )+ (1.5*numberOfPepperoniTopping);


    return totalPrice;
}

public void printReceipt(){

    System.debug('Your ' + this.size +' size pizza with ' + this.numberOfCheeseTopping  +' numberOfCheeseTopping and ' 
                                                        + this.numberOfPepperoniTopping + ' numberOfPepperoniTopping costs $ '
                                                        + this.calcCost()); 
    
}



}