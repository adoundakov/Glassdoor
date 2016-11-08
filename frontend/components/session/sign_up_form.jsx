import React from 'react';
import {hashHistory} from 'react-router';

class SignUpForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSignUp = this.handleSignUp.bind(this);
    this.update = this.update.bind(this);
    this.state = {username: '', email: '', password: ''};
  }

  update(field) {
    return e => {
      this.setState({[field]: e.target.value});
    };
  }

  handleSignUp() {
    this.props.signUp(this.state);
  }

  render() {
    let errors = this.props.errors.map((error, key) => (
      <h4 className='error-item' key={key}>{error}</h4>
    ));
    return (
      <section className="auth-form">
        <text>Sign up to get instant access to millions of salaries and reviews</text>
        <form onSubmit={this.handleSignUp}>
          <input type='text' placeholder='Username' onChange={this.update('username')}/><br/>
          <input type='text' placeholder='Email' onChange={this.update('email')}/><br/>
          <input type='password' placeholder='Password' onChange={this.update('password')}/><br/>
          {errors} <br/>
        <button type='submit' onClick={this.handleSignup}>Sign Up</button>
        </form>
      </section>
    );
  }
}

export default SignUpForm;
