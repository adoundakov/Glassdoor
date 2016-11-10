import React from 'react';
import { hashHistory } from 'react-router';

const ProfileDropDown = ({logOut, currentUserId, showSearch}) => {
  let pushUrl = url => (
    hashHistory.push(url)
  );

  let signOut = () => {
    logOut();
    hashHistory.push('/');
  };

  let klas = showSearch ? 'profile-drop-down cf lower' : 'profile-drop-down cf';

  return (
    <ul className={klas}>
      <li onClick={() => pushUrl(`user/${currentUserId}`)}>Profile</li>
      <li onClick={() => pushUrl(`user/${currentUserId}/saved`)}>Saved Jobs</li>
      <li onClick={signOut}>Log Out</li>
    </ul>
  );
};

export default ProfileDropDown;
