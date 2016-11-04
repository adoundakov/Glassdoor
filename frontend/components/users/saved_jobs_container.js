import { connect } from 'react-redux';
import SavedJobs from './saved_jobs';
import { selectAllPostings } from '../../reducers/selectors';

const mapStateToProps = (state) => ({
  postings: selectAllPostings(state)
});

export default connect(mapStateToProps)(SavedJobs);
