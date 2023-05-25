import { LightningElement } from 'lwc';

export default class Practice3 extends LightningElement {


    message = "Offer Received";
    // property to hold the value attribute
    inputValue ="";

    
    /**
     * The method that get called by the result 
     * of the onchange event can have access to 
     * the details of the event using method parameter
     * 
     */


    handleChange(event){
        console.log("User typed something");
       // event contains all the details about the onchange event 
        // including the target element that fired this function to get executed
        // event.target will return the same element that fired the evenet
        // we can get all it's attribute of the element 
        // and the value attribute is the one that store what user typed
        //console.log(event.target.value);
        // access the label attirbute of lightning input
        //console.log(event.target.label);
        this.message = event.target.value;
        this.inputValue = event.target.value;
    }

    handleReset(){
        this.message = "Offer Received";
        // reset the value attribute to ""
        this.inputValue = "";
    }

    handleClear(){

        this.message = "";
        this.inputValue = ""
        
    }

}