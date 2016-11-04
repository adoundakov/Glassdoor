import { connect } from 'react-redux';
import PostingDetail from './posting_detail';

const mapStateToProps = (state) => ({
  posting: state.postingDetail
});

// TODO: Add disptch to props with requestSave and requestApply actions

export default connect(mapStateToProps)(PostingDetail);
