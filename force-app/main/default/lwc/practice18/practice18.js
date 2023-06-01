import { LightningElement, wire } from "lwc";
import getAccontsIfRevenueLessThan from "@salesforce/apex/AccountController.getAccontsIfRevenueLessThan";
export default class Practice18 extends LightningElement {
	
    sliderValue = 100000;

    columns = [
        { label: 'Account Name', fieldName: 'Name' },
        { label: 'Annual Revenue', fieldName: 'AnnualRevenue' },
      ];

    @wire(getAccontsIfRevenueLessThan, {maxRevenue: '$sliderValue' })
    myAccounts;

    get myAccountInStr(){

        return JSON.stringify(this.myAccounts,null,2)
    }


    handleSliderChange(event){
        this.sliderValue=event.target.value;

    }

}