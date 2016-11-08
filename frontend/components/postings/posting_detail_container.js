import { connect } from 'react-redux';
import PostingDetail from './posting_detail';
import {savePosting, unSavePosting} from '../../actions/posting_actions';
import { openModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => ({
  posting: state.postingDetail,
  currentUser: state.currentUser
});

const mapDispatchToProps = (dispatch) => ({
   savePosting: postingId => dispatch(savePosting(postingId)),
   unSavePosting: postingId => dispatch(unSavePosting(postingId)),
   openModal: () => dispatch(openModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(PostingDetail);
