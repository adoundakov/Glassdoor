import React, { PropTypes } from 'react';

class ApplicationForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {postingId: props.posting.id, resume: ''};
    this.createApplication = props.createApplication.bind(this);
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createApplication(this.state);
  }

  update(field) {
    return e => {
      e.preventDefault();
      this.setState({[field]: e.target.value});
    };
  }


  // maybe include some simplified posting header? just title, logo, company
  // {this.props.errors}

  render () {
    return (
      <div className='application-form-container'>
        <div className='application-position-info'>
          <div>{this.props.posting.title}</div>
          <div>{this.props.posting.company.name}</div>
          <div>{this.props.posting.company.location}</div>
        </div>
        <form className='application-form'>
          <textarea placeholder='Resume'
                    onChange={this.update('resume')}
                    value={this.state.resume}/>
          <a className='apply'
             onClick={this.handleSubmit}>
             Apply for Position
          </a>
        </form>
      </div>
    );
  }
}

export default ApplicationForm;
