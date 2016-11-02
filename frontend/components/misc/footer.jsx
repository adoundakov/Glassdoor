import React from 'react';
import {Link} from 'react-router';
import {Left, Middle, Right} from './footer_spans';


const Footer = () => (
  <footer>
    <Link className='hr-link' to='/'>Work in HR or Recruiting?</Link>
    <p>easyHire is your free inside look at jobs and companies. Salary details, company reviews, and interview questions — all posted anonymously by employees and job seekers.</p>
    <ul className='footer-list'>
      <Left/>
      <Middle/>
      <Right/>
    </ul>
  </footer>
);

export default Footer;
