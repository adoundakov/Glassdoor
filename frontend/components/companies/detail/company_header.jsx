import React from 'react';
import Scrollchor from 'react-scrollchor';

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
          <Scrollchor to='#overview'>
            <div className='company-nav'>
              <text>{'<icon>'}</text>Overview
            </div>
          </Scrollchor>
          <Scrollchor to='#reviews'>
            <div className='company-nav'>
              <text>22k</text>Reviews
            </div>
          </Scrollchor>
          <Scrollchor to='#postings'>
            <div className='company-nav'>
              <text>62</text>Positions
            </div>
          </Scrollchor>
          <Scrollchor to='#salaries'>
            <div className='company-nav'>
              <text>147</text>Salaries
            </div>
          </Scrollchor>
        </div>
        <div className='header-review'><a>Add a Review</a></div>
      </div>
    </div>
  );
};

export default CompanyHeader;
