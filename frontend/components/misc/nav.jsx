import React from 'react';
import {Link} from 'react-router';

const Nav = () => (
  <ul className='nav-bar'>
    <li><Link to='/jobs'>Jobs</Link></li>
    <li><Link to='/companies'>Companies</Link></li>
  </ul>
);

export default Nav;
