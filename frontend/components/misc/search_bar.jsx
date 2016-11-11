import React, { PropTypes } from 'react';
import { withRouter } from 'react-router';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.update = this.update.bind(this);
    this.state = {query: props.existingQuery};
    this.submitQuery = this.submitQuery.bind(this);
  }

  componentDidMount() {
    this.submitQuery();
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
               value={this.state.query}
               placeholder={'Search '+ this.props.searchType + ' ...'}
               onChange={this.update}/>
      </div>
    );
  }
}

export default withRouter(SearchBar);
