import React, { PropTypes } from 'react';
import PostingResultItem from '../postings/posting_result_item';

const AppliedJobs = ({postings}) => {
  let listings = postings.map((posting) => (
    <PostingResultItem posting={posting} key={posting.id}/>
  ));

  return (
    <div className='user-jobs-container cf'>
      <h2>Applied Jobs</h2>
      <ul className='user-jobs-list'>
        {listings}
      </ul>
    </div>
  );
};

export default AppliedJobs;
