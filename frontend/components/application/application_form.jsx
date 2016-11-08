import React, { PropTypes } from 'react';

class ApplicationForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {postingId: props.posting.id, resume: ''};
    this.createApplication = props.createApplication.bind(this);
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleUpload = this.handleUpload.bind(this);
  }

  handleSubmit(e) {
    this.props.createApplication(this.state);
  }

  update(field) {
    return e => {
      e.preventDefault();
      this.setState({[field]: e.target.value});
    };
  }

  // for file upload bonus feature later.
  //
  // handleUpload(e) {
  //   window.cloudinary.openUploadWidget(
  //     window.CLOUDINARY_OPTIONS,
  //     (...args) => this.handleSubmit(...args)
  //   );
  // }

  // {this.props.errors}

  render () {
    let company = this.props.posting.company;
    return (
      <div className='page-content cf'>
        <div className='application-form-container'>
          <div className='application-position-info'>
            <img src={company.logo_url} alt={company.name}/>
            <div>{this.props.posting.title}</div>
            <div>{company.name}</div>
            <div>{company.location}</div>
          </div>
          <form className='application-form'>
            <textarea placeholder='Resume'
                      onChange={this.update('resume')}
                      value={this.state.resume}/>
            <br/>
            <a className='apply'
               onClick={this.handleSubmit}>
               Apply for Position
            </a>
          </form>
        </div>
      </div>
    );
  }
}

export default ApplicationForm;
