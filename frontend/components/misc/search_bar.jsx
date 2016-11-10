import React, { PropTypes } from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.update = this.update.bind(this);
    this.state = {query: ''};
    this.submitQuery = this.submitQuery.bind(this);
    this.handleKeyPress = this.handleKeyPress.bind(this);
  }

  update(e) {
    this.setState({query: e.target.value});
  }

  submitQuery() {
    switch (this.props.searchType) {
      case 'companies':
        this.props.requestAllCompanies('SEARCH', this.state.query);
        break;
      case 'jobs':
        this.props.requestAllPostings('SEARCH', this.state.query);
        break;
    }
  }

  handleKeyPress(tgt) {
    if (tgt.charCode === 13) {
      this.submitQuery();
    }
  }

  render () {
    return (
      <div className='search-bar'>
        <input type='text'
               placeholder='Search'
               onChange={this.update}
               onKeyUp={this.submitQuery}/>
      </div>
    );
  }
}

export default SearchBar;
