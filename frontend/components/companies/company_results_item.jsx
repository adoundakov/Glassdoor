import React from 'react';
import { hashHistory } from 'react-router';

const CompanyResultItem = ({company}) => {
  return (
    <li className='company-result-item cf'>
      <div className='company-result-header cf'>
        <div className='cover-window cf'></div>
        <div className='detail-info cf'>
          <div className='logo-container'>
            <img src={company.logo_url} alt={company.name}/>
          </div>
          <div className='info cf'>
            <a className='company-name'
                onClick={() => hashHistory.push(`/companies/${company.id}`)}>
                {company.name}
            </a>
            <div className='info-left'>{company.location} | {company.company_url}</div>
            <div className='info-right'><a>Add a Review</a></div>
            <div className='anchor-nav cf'>
              <div className='rating-summary'>3.2 / 5</div>
              <div className='company-nav-block cf'>
                <div className='company-nav'>22k<a>Reviews</a></div>
                <div className='company-nav'>62<a>Positions</a></div>
                <div className='company-nav'>147<a>Salaries</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </li>
  );
};

export default CompanyResultItem;
