import React from 'react';
import {Link} from 'react-router';
import {Left, Middle, Right} from './footer_spans';


const Footer = () => (
  <footer>
    <Link className='hr-link' to='/'>Work in HR or Recruiting?</Link>
    <ul className='footer'>
      <Left/>
      <Middle/>
      <Right/>
    </ul>
  </footer>
);

export default Footer;
