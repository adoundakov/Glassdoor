import { connect } from 'react-redux';
import AppliedJobs from './applied_jobs';
import { selectAllPostings } from '../../reducers/selectors';

const mapStateToProps = (state) => ({
  postings: selectAllPostings(state)
});

export default connect(mapStateToProps)(AppliedJobs);
