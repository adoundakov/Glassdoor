import React from 'react';
import CompanyResultItem from './company_results_item';
import {hashHistory, Link} from 'react-router';

class CompanyResults extends React.Component {
  constructor(props) {
    super(props);
    this.requestAllCompanies = props.requestAllCompanies.bind(this);
    this.requestOneCompany = props.requestOneCompany.bind(this);
    this.openModal = props.openModal.bind(this);
  }

  componentWillMount() {
    this.requestAllCompanies();
  }

  render () {
    let results = this.props.companies.map((company) => (
      <CompanyResultItem key={company.id}
                         company={company}
                         requestOneCompany={this.requestOneCompany}
                         openModal={this.openModal}
                         currentUser={this.props.currentUser}/>
    ));

    return (
      <div className='page-content cf'>
        <div className='company-results-container cf'>
          <span className='companies-header'>All Companies</span>
          <span className='filters'>Filters are coming soon!</span>
          <ul className='company-results-list'>
            {results}
          </ul>
        </div>
      </div>
    );
  }
}


export default CompanyResults;
