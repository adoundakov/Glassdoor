import React from 'react';
import CompanyPostings from '../companies/detail/company_postings';
import ReviewIndexItem from './review_index_item';
import { hashHistory } from 'react-router';

class ReviewIndex extends React.Component {
  constructor(props) {
    super(props);
    this.addReview = this.addReview.bind(this);
    this.openModal = props.openModal.bind(this);
  }

  componentDidMount() {
    window.scrollTo(0,0);
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
    let company = this.props.company;
    let reviews = this.props.reviews.map((review, idx) => (
      <ReviewIndexItem review={review} key={idx}/>));

    return (
      <div className='page-content cf'>
        <div className='form-container cf'>
          <h2 className='inline'>Reviews for {company.name}</h2>
          <div className='button-right'><a onClick={this.addReview(company.id)}>Add a Review</a></div>
          <ul className='review-results-list'>
            {reviews}
          </ul>
        </div>
        <CompanyPostings companyName={company.name}
                         postings={company.postings}/>
      </div>
    );
  }
}

export default ReviewIndex;
