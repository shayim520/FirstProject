// each and every class has constructor 
// if no constructor is explicitly defined 
// compiler will provide 
// empty constructor with no param
// this is also called default constructor
// if any constructor is defined 
// compiler will not provide default constructor
public class House {

    
    // Charatristic | attributes of House 
    //  style , year, hasGarage , squareFootage
    public String style ; 
    public Integer year ; 
    public Boolean hasGarage ; 
    public Integer squareFootage; 

    public House(){

        System.debug('Constructor no param'); 
        
    }

    public House(String stylee){

        this.style = stylee;


    }

    public House(String Sty, Integer y, Boolean gatage, Integer size){

        this.style = sty;
        this.year = y;
        this.hasGarage = gatage;
        this.squareFootage = size;
    }
    
}