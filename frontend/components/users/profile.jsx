import React from 'react';

class UserProfile extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    return (
      <div className='page-content cf'>
        <div className='profile-content'>
          <ul className='user-sidebar'>
            <li>Saved Jobs</li>
            <li>Applied Jobs</li>
          </ul>
          {this.props.children}
        </div>
      </div>
    );
  }
}

export default UserProfile;
