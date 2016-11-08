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
  }

  handleGuest() {
    this.props.logIn({username: 'guestSeeker', password: '123456'});
  }

  render() {
    let errors = this.props.errors.map((error, key) => (
      <h4 className='error-item' key={key}>{error}</h4>
    ));
    return (
      <section className="auth-form">
        <text>Sign in to get instant access to millions of salaries and reviews</text>
          <form onSubmit={this.handleLogIn}>
          <input type='text' placeholder='Username' onChange={this.update('username')}/><br/>
          <input type='password' placeholder='Password' onChange={this.update('password')}/><br/>
          {errors} <br/>
          <p className='guest-login' onClick={this.handleGuest}>Log In as Guest</p>
            <button type='submit' onClick={this.handleLogIn}>Sign In</button>
        </form>
      </section>
    );
  }
}

export default LogInForm;
