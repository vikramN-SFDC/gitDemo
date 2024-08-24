import { LightningElement, track } from 'lwc';
import searchMovies from '@salesforce/apex/IMDBService.searchMovies';

export default class ImdbSearch extends LightningElement {
    @track movieName = '';
    @track searchResults;
    @track error='Enter valid movie name';

    handleInputChange(event) {
        this.movieName = event.target.value;
    }

    handleSearch() {
        searchMovies({ movieName: this.movieName })
            .then(result => {
                this.searchResults = result;
                
            })
            .catch(error => {
                this.error = error.body.message;
            });
    }
}
