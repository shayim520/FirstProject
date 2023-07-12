import { LightningElement} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import uploadCSVFile from '@salesforce/apex/FileProcess.uploadFile';



export default class fileUploader extends LightningElement {

    fileData;



    handleClick(){
        const{ base64, filename } = this.fileData
        uploadCSVFile({base64, filename}).then(result =>{

            let title = result;

            if(result==='File uploaded successfully'){
                this.isFirstRowCorrect = true;
                this.toast(title, 'success')
            }else{

                this.toast(title, 'error')
            }
        })
    }

    handleFileUpload(event) {
        const file = event.target.files[0];
        var reader = new FileReader()
        reader.onload = () => {

            var base64 = reader.result.split(',')[1];
            console.log('Base64:' +base64)
            this.fileData = {
                'filename' : file.name,
                'base64' : base64
                //'csvFileContent':csvFileContent,
            }
            console.log(this.fileData)

        };
        reader.readAsDataURL(file);
    }

    toast(title, variant ){
        const toastEvent = new ShowToastEvent({
            title,
            variant
        })
        this.dispatchEvent(toastEvent)
    }
}