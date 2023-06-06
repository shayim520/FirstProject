import { getFieldValue, getRecord } from "lightning/uiRecordApi";
import { LightningElement, api, wire } from "lwc";
import OPP_ACCOUNT_ID from "@salesforce/schema/Opportunity.AccountId";
import ACCOUNT_OBJECT from "@salesforce/schema/Account"
import ACC_NAME_FIELD from "@salesforce/schema/Account.Name"
import ACC_REVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue"

export default class PracticeShowParent extends LightningElement {
	@api recordId;
	
	accObjectApiName = ACCOUNT_OBJECT;
	fields = [ACC_NAME_FIELD,ACC_REVENUE_FIELD];

	accId; 

	@wire(getRecord, { recordId: '$recordId', fields: [OPP_ACCOUNT_ID] })
	wiredOpp({ data, error}) {
		if (data) {
			this.accId = getFieldValue(data, OPP_ACCOUNT_ID)
		} else if (error) {
			// or show it on the page
			console.log(error.body.message);
			this.accId = undefined; 
		}
	} 

}