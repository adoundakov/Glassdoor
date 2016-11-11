import React from 'react';
import {Link} from 'react-router';
import SearchBarContainer from './search_bar_container';

const Nav = (props) => {
  return (
    <div className='nav-box'>
      <ul className='nav-bar'>
        <li><Link to='/jobs'>Jobs</Link></li>
        <li><Link to='/companies'>Companies</Link></li>
        <li><Link to='/salaries'>Salaries</Link></li>
      </ul>
      {props.showSearch ? <SearchBarContainer searchType={props.searchType}/> : ''}
    </div>
  );
};

export default Nav;
