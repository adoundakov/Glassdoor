import React, { PropTypes } from 'react';
import ReactPaginate from 'react-paginate';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.update = this.update.bind(this);
    this.state = {query: ''};
    this.submitQuery = this.submitQuery.bind(this);
    this.handleKeyPress = this.handleKeyPress.bind(this);
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

  handleKeyPress(tgt) {
    if (tgt.charCode === 13) {
      this.submitQuery();
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
