import { connect } from 'react-redux';
import PostingResults from './posting_results';
import { selectAllPostings } from '../../reducers/selectors';
import { requestAllPostings,
         requestOnePosting } from '../../actions/posting_actions';

const mapStateToProps = (state) => ({
  postings: selectAllPostings(state)
});

// limited for now, need to add requestSave/unSave posting

const mapDispatchToProps = (dispatch) => ({
  requestAllPostings: () => dispatch(requestAllPostings()),
  requestOnePosting: (id) => dispatch(requestOnePosting(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PostingResults);
