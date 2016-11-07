import { connect } from 'react-redux';
import PostingDetail from './posting_detail';
import {savePosting, unSavePosting} from '../../actions/posting_actions';

const mapStateToProps = (state) => ({
  posting: state.postingDetail
});

const mapDispatchToProps = (dispatch) => ({
   savePosting: postingId => dispatch(savePosting(postingId)),
   unSavePosting: postingId => dispatch(unSavePosting(postingId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PostingDetail);
