import React from 'react';
import {hashHistory} from 'react-router';

class LogInForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleLogIn = this.handleLogIn.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
    this.state = {username: '', password: ''};
    this.update = this.update.bind(this);
  }

  update(field) {
    return e => {
      this.setState({[field]: e.target.value});
    };
  }

  handleLogIn() {
    this.props.logIn(this.state);
    this.props.closeModal();
  }

  handleGuest() {
    this.props.logIn({username: 'guestSeeker', password: '123456'});
    this.props.closeModal();
  }

  render() {
    let errors = this.props.errors.map((error, key) => (
      <h4 className='error-item' key={key}>{error}</h4>
    ));
    return (
      <section className="auth-form">
        <text>Sign in to get instant access to millions of salaries and reviews</text>
        <form>
          <input type='text' placeholder='Username' onChange={this.update('username')}/><br/>
          <input type='password' placeholder='Password' onChange={this.update('password')}/><br/>
          {errors}
          <p className='guest-login' onClick={this.handleGuest}>Log In as Guest</p>
          <a onClick={this.handleLogIn}>Sign In</a>
        </form>
      </section>
    );
  }
}

export default LogInForm;
