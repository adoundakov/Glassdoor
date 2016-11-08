import { hashHistory } from 'react-router';
import React, { PropTypes } from 'react';
import PostingResultItem from '../../postings/posting_result_item';
import { values } from 'lodash';

const CompanyPostings = ({companyName, postings}) => {

  let listings = values(postings).map((posting) => (
    <PostingResultItem
      posting={posting}
      key={posting.id}
      postAction={() => hashHistory.push(`/detail/${posting.id}`)}/>
  ));

  return (
    <div className='company-sidebar'>
      <h3>Positions at {companyName}</h3>
      <ul className='company-postings'>
        {listings}
      </ul>
    </div>
  );
};

export default CompanyPostings;
