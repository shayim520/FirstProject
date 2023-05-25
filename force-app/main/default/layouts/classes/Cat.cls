public class Cat extends Animal{
 
    public String color;

    public Cat (String name, Integer age, String color){
        super(name,age);
        this.color = color;
    }
    public override void makeNoise(){

        System.debug('Cat is yelling Meow!!'); 
        

    }

    public override String getInfo(String food){

        return 'Cat ' + this.name + ' is eating ' + food;
    }
}