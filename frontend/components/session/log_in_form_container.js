import {connect} from 'react-redux';
import {logIn} from '../../actions/session_actions';
import LogInForm from './log_in_form';

const mapStateToProps = state => ({
  errors: state.session.errors
});

const mapDispatchToProps = dispatch => ({
  logIn: (user) => dispatch(logIn(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LogInForm);
