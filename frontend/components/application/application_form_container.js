import { connect } from 'react-redux';
import ApplicationForm from './application_form';
import { createApplication } from '../../actions/application_actions';

const mapStateToProps = (state) => ({
   errors: state.application,
   posting: state.postingDetail
 });

const mapDispatchToProps = (dispatch) => ({
   createApplication: application => dispatch(createApplication(application))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ApplicationForm);
