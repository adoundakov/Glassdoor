import React from 'react';
import {hashHistory} from 'react-router';

class LogInForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleLogIn = this.handleLogIn.bind(this);
    this.state = {username: '', password: ''};
    this.update = this.update.bind(this);
  }

  update(field) {
    return e => {
      this.setState({[field]: e.target.value});
    };
  }

  handleLogIn() {
    console.log(this.props.logIn);
    this.props.logIn(this.state);
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
          <a onClick={this.handleLogIn}>Sign In</a>
        </form>
      </section>
    );
  }
}

export default LogInForm;
