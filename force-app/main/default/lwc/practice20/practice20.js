import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";
import { LightningElement, wire } from "lwc";
export default class Practice20 extends LightningElement {

    highestOppAmount;
    error;


    @wire(getMaxOppAmount)
    wireingUsingMethod(result ){

        if(result.data ){
            this.highestOppAmount=result.data;
            this.error = undefined;
        }else if(result.error ){
            this.error=result.error;
            this.highestOppAmount=undefined;

        }
    }



    // @wire(getMaxOppAmount)
    // highestOppAmount;
 
    // // get the wired data in prettified string format
    // // to understand the structure of what we got
    // get highestOppAmountInstr(){
    //     return JSON.stringify(this.highestOppAmount,null,2);
    // }



}