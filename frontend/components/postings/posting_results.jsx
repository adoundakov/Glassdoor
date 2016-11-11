import React from 'react';
import PostingDetailContainer from './posting_detail_container';
import PostingResultItem from './posting_result_item';
import { hashHistory, Link } from 'react-router';
import ReactPaginate from 'react-paginate';

class PostingResults extends React.Component {
  constructor(props) {
    super(props);
    this.requestAllPostings = props.requestAllPostings.bind(this);
    this.requestOnePosting = props.requestOnePosting.bind(this);
    this.state = {data: [], offset: 0};
    this.perPage = 25;
    this.getSubsetByOffset = this.getSubsetByOffset.bind(this);
    this.handlePageClick = this.handlePageClick.bind(this);
  }

  componentWillMount() {
    if (this.props.existingQuery === '') {
      this.requestAllPostings();
    }
  }

  componentWillReceiveProps(nextProps) {
    this.setState({data: this.getSubsetByOffset(nextProps.postings, 0)});
  }

  getSubsetByOffset(array, offset) {
    return array.slice(offset, offset + this.perPage);
  }

  handlePageClick (data) {
    let selected = data.selected;
    let offset = Math.ceil(selected * this.perPage);
    let subset = this.getSubsetByOffset(this.props.postings, offset);
    this.setState({offset: offset, data: subset});
    window.scrollTo(0,0);
  }

  render() {
    let numPages = Math.ceil(this.props.postings.length / this.perPage);

    let results = this.state.data.map((posting) => (
      <PostingResultItem postAction={this.requestOnePosting}
                         key={posting.id}
                         posting={posting}/>
    ));

    return (
      <div className='page-content cf'>
        <div className='posting-results-container cf'>
          <span className='jobs-header'>All Jobs</span>
          <ul className='posting-results-list'>
            <li className='filters'>Filters are coming soon!</li>
            {results}
            <li>
              <ReactPaginate previousLabel={<img src='https://res.cloudinary.com/adoundakov/image/upload/v1478817806/images/back_kxapqj.png' alt='prev'/>}
                             nextLabel={<img src='https://res.cloudinary.com/adoundakov/image/upload/v1478817806/images/next_m1gyl6.png' alt='next'/>}
                             breakLabel='...'
                             pageNum={numPages}
                             marginPagesDisplayed={1}
                             pageRangeDisplayed={3}
                             clickCallback={this.handlePageClick}
                             containerClassName='page-list'
                             pageClassName='page-item'
                             activeClassName='active-page'
                             previousClassName='previous-page'
                             nextClassName='next-page'
                             disabledClassName='disabled-page'
                             breakClassName='page-item'
                             />
            </li>
          </ul>
          <PostingDetailContainer width='67%'/>
        </div>
      </div>
    );
  }
}

export default PostingResults;
