import {connect} from 'react-redux';
import SessionForm from './session_form';
import {logIn, signUp} from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: state.session.currentUser ? true : false,
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch, ownProps) => {
  let formType;
  let processForm;
  if (ownProps.router.location.pathname === '/login') {
    formType = 'login';
    processForm = (user) => dispatch(logIn(user));
  } else {
    formType = 'signup';
    processForm = (user) => dispatch(signUp(user));
  }

  return {
    formType,
    processForm
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
