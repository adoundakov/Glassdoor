import React from 'react';
import Nav from './nav';
import {hashHistory} from 'react-router';
import Modal, {closeStyle} from 'simple-react-modal';
import SessionForm from '../session/session_form';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.logOut = props.logOut.bind(this);
    this.state = {show: false};
    this.loggedIn = props.loggedIn;
  }

  componentWillReceiveProps(nextProps) {
    this.loggedIn = nextProps.loggedIn;
  }

  show(){
    this.setState({show: true});
  }

  close(){
    this.setState({show: false});
  }
  render() {
    let profButton;
    if (this.props.loggedIn) {
      profButton = (<a onClick={this.logOut}>Log Out</a>);
    } else {
      profButton = (<a onClick={this.show.bind(this)}>Sign In</a>);
    }

    return (
      <section className='header'>
        <h3 onClick={() => hashHistory.push('/')}>easyHire</h3>
        <Nav />
        {profButton}
        <Modal
          style={{transition: 'opacity 100ms'}}
          transitionSpeed={125}
          closeOnOuterClick={true}
          show={this.state.show}
          onClose={this.close.bind(this)}>
          <a className='modal-close' onClick={this.close.bind(this)}>X</a>
          <SessionForm />
        </Modal>
      </section>
    );
  }
}

export default Header;
