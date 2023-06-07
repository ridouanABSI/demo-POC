import { LightningElement, wire } from 'lwc';
import getFAQItems from '@salesforce/apex/FAQController.getFAQItems';

export default class AccordeonFlexibleFAQ extends LightningElement {
    activeSection = '';
    faqItems = [];
  
    @wire(getFAQItems)
    wiredFAQItems({ data, error }) {
      if (data) {
        this.faqItems = data;
      } else if (error) {
        console.error('Error loading FAQ items', error);
      }
    }
}