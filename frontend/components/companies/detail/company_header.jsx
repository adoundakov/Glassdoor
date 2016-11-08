import React from 'react';
// let company cover use bg images
// <img src={company.cover_url} alt={company.name}/>
const CompanyHeader = ({company}) => {
  return (
    <div className='company-header cf'>
      <div className='company-cover cf'>
      </div>
      <div className='info-div'>
        <div className='logo-container'>
          <img src={company.logo_url} alt={company.name}></img>
        </div>
        <h2>{company.name}</h2>
      </div>
      <div className='detail-anchor-nav cf'>
        <div className='company-header-nav'>
          <div className='company-nav'>{'<icon>'}<a>Overview</a></div>
          <div className='company-nav'>22k<a>Reviews</a></div>
          <div className='company-nav'>62<a>Positions</a></div>
          <div className='company-nav'>147<a>Salaries</a></div>
        </div>
        <div className='header-review'><a>Add a Review</a></div>
      </div>
    </div>
  );
};

export default CompanyHeader;
