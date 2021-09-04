import { api, LightningElement, wire } from 'lwc';
import getNotesList from '@salesforce/apex/accountController.getNotes';

export default class CustomerNotes extends LightningElement {
    @api recordId='0015g00000Ns2IPAAZ';
    notes;
    error;

    @wire(getNotesList, {accId: '$recordId'})
    wiredNotes({error, data}){
        if(data){
            this.notes = data;
            this.error = undefined;
        }else if(error){
            this.error = error;
            this.notes = undefined;
        }
    }
}