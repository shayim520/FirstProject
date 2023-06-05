import { LightningElement } from "lwc";
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from "@salesforce/schema/Account.Phone";
// start typing this to get help  : impLWCToast
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class Practice22_edit extends LightningElement {

    objectApiName = ACCOUNT_OBJECT; 
    // use the account record Id exists in your organization 
    recordId = '001Dn00000Unn5NIAR'; 
    fields = [NAME_FIELD , REVENUE_FIELD,INDUSTRY_FIELD, PHONE_FIELD];

    handleSuccess(event) {

        const showToastEvent = new ShowToastEvent({
            title: 'Successfully Updated',
            message: 'You have Updated the account record successfully ' + event.detail.id,
            variant: 'success'
        }); 

        this.dispatchEvent(showToastEvent);
    }               


}