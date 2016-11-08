import React from 'react';
import CompanyHeader from './detail/company_header';
import CompanyOverview from './detail/company_overview';
import CompanyPostings from './detail/company_postings';

import ConstructionSplash from '../misc/construction';

class CompanyDetail extends React.Component {
  render () {
    return (
      <div className='page-content cf'>
        <div className='company-detail-container'>
          <CompanyHeader company={this.props.company}/>
          <CompanyPostings companyName={this.props.company.name}
                           postings={this.props.company.postings}/>
          <CompanyOverview company={this.props.company}
                           width={''}/>
          <div className='company-description'>
            {this.props.company.description}
          </div>
          <div id='reviews' className='reviews'>
            <p className='text-overlay'>Reviews</p>
            <ConstructionSplash />
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
