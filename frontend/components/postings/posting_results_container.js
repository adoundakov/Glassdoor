import { connect } from 'react-redux';
import PostingResults from './posting_results';
import { selectAllPostings } from '../../reducers/selectors';
import { requestAllPostings,
         requestOnePosting } from '../../actions/posting_actions';

const mapStateToProps = (state) => ({
  postings: selectAllPostings(state)
});

const mapDispatchToProps = (dispatch) => ({
  requestAllPostings: (searchType) => dispatch(requestAllPostings(searchType)),
  requestOnePosting: (id) => dispatch(requestOnePosting(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PostingResults);
