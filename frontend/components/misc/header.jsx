import React from 'react';
import Nav from './nav';
import {hashHistory} from 'react-router';
import Modal, {closeStyle} from 'simple-react-modal';
import SessionForm from '../session/session_form';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.logOut = props.logOut.bind(this);
    this.openModal = props.openModal.bind(this);
    this.closeModal = props.closeModal.bind(this);
  }

  show(){
    this.openModal();
  }

  close(){
    this.closeModal();
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
          show={this.props.modal}
          onClose={this.close.bind(this)}>
          <SessionForm />
        </Modal>
      </section>
    );
  }
}

export default Header;
