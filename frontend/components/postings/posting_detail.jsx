import React from 'react';
import { module } from 'path';

class PostingDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let posting = this.props.posting;
    let company = posting.company;
    this.blurOverlay = '';

    if (this.props.posting.id === -1) {
      this.containerClass = 'posting-detail-container blur cf';
      this.blurOverlay = <div className='blur-overlay'>
                          <h3>Click a Job To View Here</h3>
                          <div>Scroll through the jobs on the let and click to view the job description in this area</div>
                        </div>;
    } else {
      this.containerClass = 'posting-detail-container cf';
    }

    return (
      <div>
        {this.blurOverlay}
        <div className={this.containerClass}>
          <div className='detail-header cf'>
            <div className='cover-window cf'></div>
            <div className='detail-info cf'>
              <div className='logo-container'>
                <img src={company.logo_url} alt={company.name}></img>
              </div>
              <div className='info'>
                <h3>{posting.title}</h3>
                <div className='job-info'>
                  <div className='info-left'>{company.name} | {company.location}</div>
                  <div className='info-right'>POSTED 3 DAYS AGO</div>
                </div>
              </div>
            </div>
            <div className='anchor-nav'>
              <div className='nav'>
                <a>Description</a>
                <a>Company</a>
              </div>
              <div className='anchor'>
                <a className='apply'>Apply on easyHire</a>
                <a className='save'>Save</a>
              </div>
            </div>
          </div>
          <div className='detail-content'>
            {posting.description}
          </div>
        </div>
      </div>
    );
  }
}

export default PostingDetail;
