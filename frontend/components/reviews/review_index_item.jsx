import React from 'react';
import { hashHistory } from 'react-router';
import ReactStars from 'react-stars';

const ReviewIndexItem = ({review}) => {
  let currentEmployee;
  if (review.current_employee) {
    currentEmployee = 'Current Employee';
  } else {
    currentEmployee = 'Former Employee';
  }
  return (
    <li className='review-index-item'>
      <div className='review-item-header'>
        <div className='top-info'>
          <p className='review-age'>Nov 11th, 2015</p>
          <div className='mini-logo'>
            <img src={review.company_logo_url} alt='Review Logo'/>
          </div>
        </div>
        <div className='review-title'>{review.title}</div>
        <div className='review-subheader'>
          <div className='review-rating'>
            <ReactStars count={5} char='&#10026;' half={false} edit={false}
                        color1={'#404040'} color2={'#86B73B'}
                        value={review.rating}/>
          </div>
          <div className='details'>
            {currentEmployee} - {review.job_title}
          </div>
        </div>
      </div>
      <div className='review-item-body'>
        <label className='input-label'>Pros:</label>
        {review.pros}
        <label className='input-label'>Cons:</label>
        {review.cons}
        <label className='input-label'>Advice for Management:</label>
        {review.advice}
      </div>
    </li>
  );
};

export default ReviewIndexItem;
