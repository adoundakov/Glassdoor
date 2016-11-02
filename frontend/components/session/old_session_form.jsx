import React from 'react';
import {Link, withRouter} from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {username: '', password: ''};
  }

  update(property) {
    return (e) => (
      this.setState({[property]: e.target.value})
    );
  }

  componentDidUpdate() {
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
			this.props.router.push("/");
		}
	}

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm(user, this.props.formType);
  }

  render() {
    let heading;
    let linkContent;
    let buttonContent;

    if (this.props.formType === 'login') {
      heading = 'Log In';
      linkContent = <Link to="signup">Sign Up</Link>;
      buttonContent = 'Log In';
    } else {
      heading = 'Sign Up';
      linkContent = <Link to="login">Log In</Link>;
      buttonContent = 'Sign Up';
    }
    let errors = this.props.errors.map((error, key) => (
      <li className='error-item' key={key}>{error}</li>
    ));
    return (
      <div className='auth-form'>
        <h1>{heading}</h1>
        {linkContent} <br/>
        <form>
          <input type='text'placeholder='Username' onChange={this.update('username')}/><br/>
          <input type='password'placeholder='Password' onChange={this.update('password')}/><br/>
          <button onClick={this.handleSubmit.bind(this)}>{buttonContent}</button>
        </form>
        <ul>{errors}</ul>
      </div>
    );
  }
}

export default withRouter(SessionForm);
