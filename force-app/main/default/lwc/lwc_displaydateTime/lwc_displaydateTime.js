import { LightningElement,api } from 'lwc';

export default class Lwc_displaydateTime extends LightningElement {

    @api tdate;
    tdate = new Date().toDateString();
}