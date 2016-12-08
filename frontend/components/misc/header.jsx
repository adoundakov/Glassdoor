import React from 'react';
import Nav from './nav';
import {hashHistory, withRouter} from 'react-router';
import Modal, {closeStyle} from 'simple-react-modal';
import SessionForm from '../session/session_form';
import ProfileDropDown from './profile_drop_down';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.logOut = props.logOut.bind(this);
    this.openModal = props.openModal.bind(this);
    this.closeModal = props.closeModal.bind(this);
    this.clearErrors = props.clearErrors.bind(this);
  }

  show(){
    this.openModal();
  }

  close(){
    this.closeModal();
  }

  getHeaderClass () {
    let type = this.props.router.location.pathname.slice(1);
    switch (type) {
      case 'companies':
        this.showSearch = true;
        this.searchType = type;
        return 'header tall';
      case 'jobs':
        this.showSearch = true;
        this.searchType = type;
        return 'header tall';
      default:
        this.showSearch = false;
        return 'header';
    }
  }

  render() {
    let profButton;
    let headerClass = this.getHeaderClass();
    let headIconClass = this.showSearch ? 'header-icon big' : 'header-icon';

    if (this.props.loggedIn) {
      profButton = (
        <div id='prof-trigger' className='profile-drop-down-trigger'>
          <img src='http://flaticons.net/icons/Application/User-Profile.png'
               alt='profile'/>
          <ProfileDropDown logOut={this.logOut}
                           currentUserId={this.props.currentUserId}
                           showSearch={this.showSearch}/>
        </div>);
    } else {
      profButton = (<a className='sign-in' onClick={this.show.bind(this)}>Sign In</a>);
    }

    return (
      <div className='header-background'>
        <section className={headerClass}>
          <div className='header-group'
               onClick={() => hashHistory.push('/')}>
            <div className={headIconClass}>{''}</div>
            <h3>easyHire</h3>
          </div>
          <Nav showSearch={this.showSearch} searchType={this.searchType}/>
          {profButton}
          <Modal
            style={{transition: 'opacity 100ms linear'}}
            containerStyle={{padding: '0'}}
            transitionSpeed={125}
            closeOnOuterClick={true}
            show={this.props.modal}
            onClose={this.close.bind(this)}>
            <SessionForm clearErrors={this.clearErrors}/>
          </Modal>
        </section>
      </div>
    );
  }
}

export default withRouter(Header);
