import React from 'react';
import ReactStars from 'react-stars';
import { Link } from 'react-router';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.createReview = props.createReview.bind(this);
    this.updateRating = this.updateRating.bind(this);
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.toggleCheckbox = this.toggleCheckbox.bind(this);
    this.state = {company_id: props.company.id, rating: 3,
                  current_employee: false, job_title: '', title: '',
                  pros: '', cons: '', advice: ''};
  }

  componentWillReceiveProps(nextProps) {
    this.setState({company_id: nextProps.company.id});
  }

  update(field) {
    return e => {
      this.setState({[field]: e.target.value});
    };
  }

  toggleCheckbox (e) {
    let newCurrentEmployee = this.state.current_employee ? false : true;
    this.setState({current_employee: newCurrentEmployee});
  }

  updateRating (newRating) {
    this.setState({rating: newRating});
  }

  handleSubmit (e) {
    e.preventDefault();
    this.createReview(this.state);
  }

  render () {
    let errors = this.props.errors.map((error, key) => (
      <h4 className='error-item' key={key}>{error}</h4>
    ));

    let company = this.props.company;

    return (
      <div className='page-content cf'>
        <div className='form-container cf'>
          <h2>Rate a Company</h2>
          <p>It only takes a minute! And your anonymous review will help other job seekers.</p>
          <form className='review-form' onSubmit={this.handleSubmit}>
            <input className='rev-input' type='text' value={company.name} readOnly/>
            <label className='input-label'>Overall Rating</label>
            <div className='form-rating cf'>
              <ReactStars count={5}
                          char='&#10026;'
                          onChange={this.updateRating}
                          value={this.state.rating}
                          half={false}
                          color1={'#404040'}
                          color2={'#86B73B'}/>
            </div>
            <label className='input-label'
                   style={{display: 'inline-block', 'paddingRight': '14px', 'marginTop': '14px'}}>
                   Currently Work Here?
            </label>
            <input type='checkbox'
                   value={this.state.current_employee}
                   checked={this.state.current_employee}
                   onChange={this.toggleCheckbox}/>
            <label className='input-label'>Review Title</label>
            <input className='rev-input' type='text' onChange={this.update('title')}/>
            <label className='input-label'>Pros</label>
            <textarea onChange={this.update('pros')} placeholder={`Share some of the best reasons to work at ${company.name}`}/>
            <label className='input-label'>Cons</label>
            <textarea onChange={this.update('cons')} placeholder={`Share some of the downsides of working at ${company.name}`}/>
            <label className='input-label'>Advice to Management</label>
            <textarea onChange={this.update('advice')}/>
            <h3>About You</h3>
            <label className='input-label'>Job Title</label>
            <input className='rev-input' type='text' onChange={this.update('job_title')}/>
            {errors}<br/>
          <button type='submit' onClick={this.handleSubmit}>Submit</button>
          <Link to={`/company/${company.id}`}>Cancel</Link>
          </form>
        </div>
        <div className='review-sidebar'>
          <h3>Keep it Real</h3>
          <p>Thank you for contributing to the community. Your opinion will help others make decisions about jobs and companies.</p>
          <p className='strong'>Please stick to the community guidelines and do not post:</p>
          <ul className='bullet-list'>
            <li>Aggressive or discriminatory language</li>
            <li>Profanities</li>
            <li>Trade secrets / confidential information</li>
          </ul>
          <p>Thank you for doing your part to keep eayHire the most trusted place to find a job and company you love.</p>
        </div>
      </div>
    );
  }
}

export default ReviewForm;
