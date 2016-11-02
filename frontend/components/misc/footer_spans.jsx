import React from 'react';
import {Link} from 'react-router';

export const Left = () => (
  <li>
    <ul className='flex-list'>
      <li className='footer-list'>
        <p>easyHire</p>
        <ul>
          <li><a>About Us</a></li>
          <li><a>Awards & Trends</a></li>
          <li><a>Blog</a></li>
          <li><a>Research</a></li>
        </ul>
      </li>
      <li className='footer-list'>
        <p>Employers</p>
        <ul>
          <li><a>Get a Free Employer Account</a></li>
          <li><a>Employer Center</a></li>
          <li><a>Post a Job</a></li>
        </ul>
      </li>
    </ul>
  </li>
);

export const Middle = () => (
  <li>
    <ul className='flex-list'>
      <li className='footer-list'>
        <p>Community</p>
        <ul>
          <li><a>Help Center</a></li>
          <li><a>Guidelines</a></li>
          <li><a>Terms of Use</a></li>
          <li><a>Privacy & Cookies</a></li>
        </ul>
      </li>
      <li className='footer-list'>
        <p>Work With Us</p>
        <ul>
          <li><a>Job Boards</a></li>
          <li><a>Advertisers</a></li>
          <li><a>Developers</a></li>
          <li><a>Careers</a></li>
        </ul>
      </li>
    </ul>
  </li>
);

export const Right = () => (
  <li>
    <div>
      <span>
        <text>Country Selector Coming Soon</text>
      </span>
      <div>
        <a className='ios app-store'></a>
        <a className='android app-store'></a>
      </div>
    </div>
  </li>
);
