import {connect} from 'react-redux';
import {logIn} from '../../actions/session_actions';
import LogInForm from './log_in_form';
import {closeModal} from '../../actions/modal_actions';

const mapStateToProps = state => ({
  errors: state.session.errors
});

const mapDispatchToProps = dispatch => ({
  logIn: (user) => dispatch(logIn(user)),
  closeModal: () => dispatch(closeModal())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LogInForm);
