import React from 'react';
import { hashHistory } from 'react-router';

const PostingResultItem = ({posting, requestPosting}) => {

  const handleClick = (e) => {
    requestPosting(posting.id);
    console.log('CLICKED');
  };

  return (
    <li className='posting-result-item cf'
        onClick={handleClick}>
      <div className='img-box'>
        <img src={posting.company.logo_url} alt={posting.company.name}/>
      </div>
      <div className='posting-info'>
        <span className='posting-result-title'>{posting.title}</span>
        <span>{posting.company.name}</span>
        <span style={{fontSize: 12}}>{posting.company.location}</span>
      </div>
    </li>
  );
};

export default PostingResultItem;
