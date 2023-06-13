import get5CasesByStatus from "@salesforce/apex/CaseController.get5CasesByStatus";
import { LightningElement, api, wire } from "lwc";
//imp:LWC-Navigation
import { NavigationMixin } from 'lightning/navigation';
import { refreshApex } from '@salesforce/apex';
import { deleteRecord } from "lightning/uiRecordApi";


export default class CaseTable extends NavigationMixin(LightningElement) {
    
    // this public property is meant to filled up 
    // by the app page while adding from app builder
    // it has 4 options specified in xml Closed, New, Working, Escalated 
    @api selectedStatus;
    
    
    columns = [
        { label: 'Case Number', fieldName: 'CaseNumber' },
        { label: 'Subject', fieldName: 'Subject',initialWidth: 400 },
        { label: 'Priority', fieldName: 'Priority'},
        { label: 'Status', fieldName: 'Status' },
        {
            type: 'action',
            typeAttributes: {
                rowActions: [
                    { label: 'View', name: 'view' },
                    { label: 'Edit', name: 'edit' },
                    { label: 'Delete',  name: 'delete' }
                ]
            }
        }

    ];

    @wire(get5CasesByStatus, {'statusParam' : '$selectedStatus' })
    myCases;

    // dynamically generate card title according to the status
    get cardTitle() {
        return this.selectedStatus + " Cases Table"
    }

    // method to react to the button clicks in datatable 
    handleRowAction(event) {
        // get the action name 
        const actionName = event.detail.action.name; 
        console.log(actionName); 
        // get the row data 
        const rowData = event.detail.row; 
        console.log(rowData); 

        if (actionName === 'view') {
            // navigate to the record page 
            this.navigateToCaseRecordPage( rowData.Id );

        } else if (actionName === 'edit') {
            // navigate to the record edit page 
            console.log('editing the record ');
            this.navigateToCaseRecordEditModalWindow( rowData.Id);

        } else if (actionName === 'delete') { 
            // delete the record 
            console.log('deleting the record ');
            this.deleteTheRow(rowData.Id);
        } 


        
    }


    // create a function to navigate to record if recordId is provided 
    navigateToCaseRecordPage(recordId) {
        
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                actionName: "view",
                recordId: recordId,
                objectApiName: "Case"
            }
        });

    }

     // create a function to navigate to record edit page if recordId is provided 
    navigateToCaseRecordEditModalWindow(recordId) { 

        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                actionName: "edit",
                recordId: recordId,
                objectApiName: "Case"
            }
        });
        // refresh the data 
        refreshApex(this.myCases); 
        // this did work however the table is not updated 
        // because navigating to edit page is async operation
        // it will be completed only when use click on save button
        // and there is no way to use .then to perform refreshApex , 
        //need alternative approach
        // like using lightning data service instead
    }

    deleteTheRow(recordIdToDelete) {
        // using lds adaptor function 
        deleteRecord(recordIdToDelete)
            .then(() => refreshApex(this.myCases) )
            .catch(error => console.log(error) ); 
   
    }

}