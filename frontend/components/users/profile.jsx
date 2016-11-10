import React from 'react';
import { hashHistory } from 'react-router';

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.currentUser = props.currentUser;
  }

  handleClick(uri) {
    return (e) => {
      e.preventDefault();
      hashHistory.push(`/user/${this.currentUser.id}/${uri}`);
    };
  }

  render () {
    return (
      <div className='page-content cf'>
        <div className='profile-content'>
          <ul className='user-sidebar'>
            <li onClick={this.handleClick('saved')}>Saved Jobs</li>
            <li onClick={this.handleClick('applied')}>Applied Jobs</li>
            <li onClick={this.handleClick('authored')}>Authored Reviews</li>
          </ul>
          {this.props.children}
        </div>
      </div>
    );
  }
}

export default UserProfile;
