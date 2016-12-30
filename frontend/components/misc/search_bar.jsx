import React, { PropTypes } from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props.existingQuery);
    this.update = this.update.bind(this);
    this.state = {query: props.existingQuery};
    this.submitQuery = this.submitQuery.bind(this);
  }

  componentWillMount() {
    console.log('MOUNTED');
    console.log([this.state.query]);
    if (this.state.query != '') {
      this.submitQuery();
    }
  }

  // ROUTE IS CHANGING ON INITIAL SUBMIT, SOMEHOW BEING REFRESHED AND A '?' APPEARS BEFORE '#' IN ROUTE
  // The ? triggers a refresh, navigation in chrome.
  //

  update(e) {
    this.setState({query: e.target.value}, () => {this.submitQuery();});
  }

  submitQuery() {
    console.log('SUBMITTED');
    console.log([this.state.query]);
    if (this.state.query != '') {
      let input = this.state.query.split(' ');
      switch (this.props.searchType) {
        case 'companies':
        this.props.requestAllCompanies('SEARCH', input);
        break;
        case 'jobs':
        this.props.requestAllPostings('SEARCH', input);
        break;
      }
    }
  }

  render () {
    return (
      <div className='search-bar'>
        <input type='text'
               value={this.state.query}
               placeholder={'Search '+ this.props.searchType + ' ...'}
               onChange={this.update}/>
      </div>
    );
  }
}

export default SearchBar;
