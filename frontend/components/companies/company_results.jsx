import React from 'react';
import CompanyResultItem from './company_results_item';
import {hashHistory, Link} from 'react-router';
import ReactPaginate from 'react-paginate';

class CompanyResults extends React.Component {
  constructor(props) {
    super(props);
    this.requestAllCompanies = props.requestAllCompanies.bind(this);
    this.requestOneCompany = props.requestOneCompany.bind(this);
    this.openModal = props.openModal.bind(this);
    this.state = {data: [], offset: 0};
    this.perPage = 10;
    this.getSubsetByOffset = this.getSubsetByOffset.bind(this);
    this.handlePageClick = this.handlePageClick.bind(this);
  }

  componentWillMount() {
    this.requestAllCompanies();
  }

  componentWillReceiveProps(nextProps) {
    this.setState({data: this.getSubsetByOffset(nextProps.companies, 0)});
  }

  getSubsetByOffset(array, offset) {
    return array.slice(offset, offset + this.perPage);
  }

  handlePageClick (data) {
    let selected = data.selected;
    let offset = Math.ceil(selected * this.perPage);
    let subset = this.getSubsetByOffset(this.props.companies, offset);
    this.setState({offset: offset, data: subset});
  }

  render () {
    let numPages = Math.ceil(this.props.companies.length / this.perPage);
    let results = this.state.data.map((company) => (
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
          <ReactPaginate previousLabel={<img src='https://res.cloudinary.com/adoundakov/image/upload/v1478817806/images/back_kxapqj.png' alt='prev'/>}
                         nextLabel={<img src='https://res.cloudinary.com/adoundakov/image/upload/v1478817806/images/next_m1gyl6.png' alt='next'/>}
                         breakLabel='...'
                         pageNum={numPages}
                         marginPagesDisplayed={1}
                         pageRangeDisplayed={3}
                         clickCallback={this.handlePageClick}
                         containerClassName='page-list'
                         pageClassName='page-item'
                         activeClassName='active-page'
                         previousClassName='previous-page'
                         nextClassName='next-page'
                         disabledClassName='disabled-page'
                         breakClassName='page-item'
                         />
        </div>
      </div>
    );
  }
}


export default CompanyResults;
