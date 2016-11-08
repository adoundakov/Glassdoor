import React, { PropTypes } from 'react';
import PostingDetailContainer from './posting_detail_container';

const StandalonePostingDetail = ({posting}) => {
  return (
    <div className='page-content cf'>
      <div className='standalone-detail-container cf'>
        <PostingDetailContainer width='100%' style={{border: '0'}}/>
      </div>
    </div>
  );
};

export default StandalonePostingDetail;
