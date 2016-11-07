import React from 'react';

class PostingDetail extends React.Component {
  constructor(props) {
    super(props);
    this.savePosting = props.savePosting.bind(this);
    this.unSavePosting = props.unSavePosting.bind(this);
    this.handleSave = this.handleSave.bind(this);
  }

  handleSave(e) {
    e.preventDefault();
    if (this.props.posting.isSaved) {
      this.unSavePosting(this.props.posting.id);
    } else {
      this.savePosting(this.props.posting.id);
    }
  }

  render() {
    let posting = this.props.posting;
    let company = posting.company;
    let savedClass = posting.isSaved ? 'unsave' : 'save';
    let savedText = posting.isSaved ? 'Saved' : 'Save';

    // TODO: Add disable if already applied

    this.blurOverlay = '';

    if (this.props.posting.id === -1) {
      this.containerClass = 'posting-detail-container blur cf';
      this.blurOverlay = <div className='blur-overlay'>
                          <h3>Click a Job To View Here</h3>
                          <div>Scroll through the jobs on the left and click to view the job description in this area</div>
                        </div>;
    } else {
      this.containerClass = 'posting-detail-container cf';
    }

    return (
      <div>
        {this.blurOverlay}
        <div className={this.containerClass} style={{width: this.props.width}}>
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
                <a className={savedClass}
                   onClick={this.handleSave}>{savedText}</a>
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
