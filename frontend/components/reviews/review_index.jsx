import React from 'react';
import CompanyPostings from '../companies/detail/company_postings';
import ReviewIndexItem from './review_index_item';
import { hashHistory } from 'react-router';
import ReactPaginate from 'react-paginate';

class ReviewIndex extends React.Component {
  constructor(props) {
    super(props);
    this.addReview = this.addReview.bind(this);
    this.openModal = props.openModal.bind(this);
    this.state = {data: [], offset: 0};
    this.perPage = 10;
    this.getSubsetByOffset = this.getSubsetByOffset.bind(this);
    this.handlePageClick = this.handlePageClick.bind(this);
  }

  componentDidMount() {
    window.scrollTo(0,0);
  }

  componentWillReceiveProps(nextProps) {
    this.setState({data: this.getSubsetByOffset(nextProps.reviews, 0)});
  }

  getSubsetByOffset(array, offset) {
    return array.slice(offset, offset + this.perPage);
  }

  handlePageClick (data) {
    let selected = data.selected;
    let offset = Math.ceil(selected * this.perPage);
    let subset = this.getSubsetByOffset(this.props.reviews, offset);
    this.setState({offset: offset, data: subset});
  }

  addReview (id) {
    return e => {
      e.preventDefault();
      if (this.props.currentUser !== null) {
        hashHistory.push(`reviews/${id}/new`);
      } else {
        this.openModal();
      }
    };
  }

  render () {
    let numPages = Math.ceil(this.props.reviews.length / this.perPage);
    let company = this.props.company;
    let reviews = this.state.data.map((review, idx) => (
      <ReviewIndexItem review={review} key={idx}/>));

    return (
      <div className='page-content cf'>
        <div className='form-container cf'>
          <h2 className='inline'>Reviews for {company.name}</h2>
          <div className='button-right'><a onClick={this.addReview(company.id)}>Add a Review</a></div>
          <ul className='review-results-list'>
            {reviews}
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
        <CompanyPostings companyName={company.name}
                         postings={company.postings}/>
      </div>
    );
  }
}

export default ReviewIndex;
