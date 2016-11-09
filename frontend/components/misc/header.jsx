import React from 'react';
import Nav from './nav';
import {hashHistory} from 'react-router';
import Modal, {closeStyle} from 'simple-react-modal';
import SessionForm from '../session/session_form';
import ProfileDropDown from './profile_drop_down';

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
      profButton = (
        <div className='profile-drop-down-trigger'>
          <img src='http://flaticons.net/icons/Application/User-Profile.png' alt='profile'/>
          <ProfileDropDown logOut={this.logOut} currentUserId={this.props.currentUserId}/>
        </div>);
    } else {
      profButton = (<a className='sign-in' onClick={this.show.bind(this)}>Sign In</a>);
    }

    return (
      <div className='header-background'>
        <section className='header'>
          <div className='header-group'
               onClick={() => hashHistory.push('/')}>
            <div className='header-icon'>{''}</div>
            <h3>easyHire</h3>
          </div>
          <Nav />
          {profButton}
          <Modal
            style={{transition: 'opacity 100ms linear'}}
            containerStyle={{padding: '0'}}
            transitionSpeed={125}
            closeOnOuterClick={true}
            show={this.props.modal}
            onClose={this.close.bind(this)}>
            <SessionForm />
          </Modal>
        </section>
      </div>
    );
  }
}

export default Header;
