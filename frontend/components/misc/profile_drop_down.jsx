import React from 'react';
import { hashHistory } from 'react-router';

const ProfileDropDown = ({logOut, currentUserId}) => {
  let pushUrl = url => (
    hashHistory.push(url)
  );
  
  let signOut = () => {
    logOut();
    hashHistory.push('/');
  };

  return (
    <ul className='profile-drop-down cf'>
      <li onClick={() => pushUrl(`user/${currentUserId}`)}>Profile</li>
      <li onClick={() => pushUrl(`user/${currentUserId}/saved`)}>Saved Jobs</li>
      <li onClick={signOut}>Log Out</li>
    </ul>
  );
};

export default ProfileDropDown;
