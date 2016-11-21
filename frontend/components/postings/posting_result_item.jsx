import React from 'react';
import { hashHistory, Link } from 'react-router';

const PostingResultItem = ({posting, postAction}) => {

  const handleClick = (e) => {
    postAction(posting.id);
    window.scrollTo(0,0);
  };
  return (
    <li className='posting-result-item cf'
        onClick={handleClick}>
      <div className='img-box'>
        <img src={posting.company.logo_url} alt={posting.company.name}/>
      </div>
      <div className='posting-info'>
        <span className='posting-result-title'>{posting.title}</span>
        <span>
          {posting.company.name}
        </span>
        <div className='posting-info-span'>
          <span>{posting.company.location}</span>
          <span>{posting.age} ago</span>
        </div>
      </div>
    </li>
  );
};

export default PostingResultItem;
