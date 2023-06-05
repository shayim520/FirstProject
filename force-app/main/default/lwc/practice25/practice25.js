import { LightningElement } from "lwc";
//impLWCUser for shorcut
import USER_ID from "@salesforce/user/Id";
import USER_OBJECT from "@salesforce/schema/User";

import NAME_FIELD from "@salesforce/schema/User.Name";
import EMAIL_FIELD from "@salesforce/schema/User.Email";
import USER_NAME_FIELD from "@salesforce/schema/User.Username";
import ACTIVE_FIELD from "@salesforce/schema/User.IsActive";


export default class Practice25 extends LightningElement {

    objectApiName= USER_OBJECT;// getting from import
    recordId = USER_ID;  // getting from import
    fields=[NAME_FIELD, EMAIL_FIELD,USER_NAME_FIELD,ACTIVE_FIELD];
}