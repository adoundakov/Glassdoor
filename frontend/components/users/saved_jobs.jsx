import React, { PropTypes } from 'react';
import PostingResultItem from '../postings/posting_result_item';
import { hashHistory } from 'react-router';

const SavedJobs = ({postings}) => {

  let listings = postings.map((posting) => (
    <PostingResultItem
      posting={posting}
      key={posting.id}
      postAction={() => hashHistory.push(`/detail/${posting.id}`)}/>
  ));

  return (
    <div className='user-jobs-container cf'>
      <h2>Saved Jobs</h2>
      <ul className='user-jobs-list cf'>
        {listings}
      </ul>
    </div>
  );
};

export default SavedJobs;
