import React from 'react';
import PostingDetailContainer from './posting_detail_container';
import PostingResultItem from './posting_result_item';
import { hashHistory, Link } from 'react-router';

class PostingResults extends React.Component {
  constructor(props) {
    super(props);
    this.requestAllPostings = props.requestAllPostings.bind(this);
    this.requestOnePosting = props.requestOnePosting.bind(this);
  }

  componentWillMount() {
    this.requestAllPostings();
  }

  render() {
    let results = this.props.postings.map((posting) => (
      <PostingResultItem onClick= {() => this.requestOnePosting(posting.id)}
                         key={posting.id}
                         posting={posting}/>
    ));

    return (
      <div className='page-content cf'>
        <div className='posting-results-container cf'>
          <span className='jobs-header'>All Jobs</span>
          <ul className='posting-results-list'>
            <li className='filters'>FILTER STUFF</li>
            {results}
          </ul>
          <PostingDetailContainer />
        </div>
      </div>
    );
  }
}

export default PostingResults;
