import get5CasesByStatus from "@salesforce/apex/CaseController.get5CasesByStatus";
import { LightningElement, api, wire } from "lwc";
export default class CaseTable extends LightningElement {
    
    // this public property is meant to filled up 
    // by the app page while adding from app builder
    // it has 4 options specified in xml Closed, New, Working, Escalated 
    @api selectedStatus;
    
    columns = [
        { label: 'Case Number', fieldName: 'CaseNumber' },
        { label: 'Subject', fieldName: 'Subject' },
        { label: 'Priority', fieldName: 'Priority'},
        { label: 'Status', fieldName: 'Status'}
    ];

    @wire(get5CasesByStatus, {'statusParam' : '$selectedStatus' })
    myCases;

}