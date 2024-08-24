import { LightningElement, track } from 'lwc';
import fetchLeagues from '@salesforce/apex/FootballAPI.fetchLeagues';

export default class FootballLeaguesList extends LightningElement {
    @track apiKey = '';
    @track leagues;
    @track error;

    handleApiKeyChange(event) {
        this.apiKey = event.target.value;
    }

    fetchLeagues() {
        if (!this.apiKey) {
            this.error = 'Please enter an API Key.';
            return;
        }
        
        fetchLeagues({ apiKey: this.apiKey })
            .then(result => {
                if (result && result.success) {
                    this.leagues = result.result;
                 
                } else {
                    this.error = 'Failed to fetch leagues.';
                }
            })
            .catch(error => {
                this.error = 'Error fetching leagues: ' + error.body.message;
            });
    }
}
