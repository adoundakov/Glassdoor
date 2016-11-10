import React, { PropTypes } from 'react';
import ReviewIndexItem from '../reviews/review_index_item';
const AuthoredReviews = ({reviews}) => {
  let listings = reviews.map((review) => (
    <ReviewIndexItem
      review={review}
      key={review.id}/>
  ));
  return (
    <div className='user-jobs-container cf' style={{padding: '0 14px'}}>
      <h2 style={{padding: '14px 0'}}>Authored Reviews</h2>
      <ul className='review-results-list'
          style={{borderTop: '1px solid #ccc'}}>
        {listings}
      </ul>
    </div>
  );
};

export default AuthoredReviews;
