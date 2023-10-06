import { LightningElement,wire,api ,track} from 'lwc';
import getOpportunities from '@salesforce/apex/opportunityData.getOpportunities';
import OpportunityAmount from '@salesforce/label/c.OpportunityAmount';
import OpportunityName from '@salesforce/label/c.OpportunityName';export default class DynamicOpportunity extends LightningElement {
    @api recordId;
    @api amount;
    handleChange(event) {
        this.amount = event.target.value;
    }
   @wire(getOpportunities, {accId:'$recordId',amt:'$amount' })
     opportunities;
     label = {
       OpportunityAmount,
       OpportunityName
   };
}