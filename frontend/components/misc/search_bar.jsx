import React, { PropTypes } from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.update = this.update.bind(this);
    this.state = {query: ''};
    this.submitQuery = this.submitQuery.bind(this);
  }

  update(e) {
    this.setState({query: e.target.value}, () => {this.submitQuery();});
  }

  submitQuery() {
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

  render () {
    return (
      <div className='search-bar'>
        <input type='text'
               placeholder={'Search '+ this.props.searchType + ' ...'}
               onChange={this.update}/>
      </div>
    );
  }
}

export default SearchBar;
