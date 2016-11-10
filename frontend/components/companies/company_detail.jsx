import React from 'react';
import CompanyHeader from './detail/company_header';
import CompanyOverview from './detail/company_overview';
import CompanyPostings from './detail/company_postings';
import { Link } from 'react-router';
import ReviewIndexItem from '../reviews/review_index_item';
import ReactStars from 'react-stars';
import ConstructionSplash from '../misc/construction';

class CompanyDetail extends React.Component {
  render () {
    let company = this.props.company;
    return (
      <div className='page-content cf'>
        <div className='company-detail-container'>
          <CompanyHeader company={company}
                         openModal={this.props.openModal}
                         currentUser={this.props.currentUser}/>
                       <CompanyPostings companyName={company.name}
                           postings={company.postings}/>
                         <CompanyOverview company={company}
                           width={''}/>
          <div className='company-description'>
            {company.description}
          </div>
          <div id='reviews' className='reviews'>
            <h3>Reviews for {company.name}</h3>
            <div className='review-rating-summary'>
              {company.average_rating}
              <ReactStars count={5}
                          char='&#10026;'
                          value={company.average_rating}
                          color1={'#404040'}
                          color2={'#86B73B'}
                          edit={false}
                          />
            </div>
            <h4>Featured Review</h4>
            <ul style={{borderTop: '1px solid #ccc'}}>
              <ReviewIndexItem review={company.topReview}/>
            </ul>
            <Link to={`/reviews/${company.id}`}>
              See all {company.numReviews} Reviews
            </Link>
          </div>

          <div id='salaries' className='salaries'>
            <p className='text-overlay'>Salaries</p>
            <ConstructionSplash />
          </div>

        </div>
      </div>
    );
  }
}

export default CompanyDetail;
