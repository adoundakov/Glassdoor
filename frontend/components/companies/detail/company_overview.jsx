import React from 'react';

const CompanyOverview = ({company}) => {
  return (
    <div className='company-overview'>
      <h3>{company.name} Overview</h3>
      <div className='overview-table'>
        <div className='row'>
          <label className='key'>Website</label>
          <span className='value'>{company.company_url}</span>
        </div>
        <div className='row'>
          <label className='key'>Size</label>
          <span className='value'>{company.size}</span>
        </div>
        <div className='row'>
          <label className='key'>Headquarters</label>
          <span className='value'>{company.location}</span>
        </div>
        <div className='row'>
          <label className='key'>CEO</label>
          <span className='value'>{company.ceo}</span>
        </div>
      </div>
    </div>
  );
};

export default CompanyOverview;
