import {connect} from 'react-redux';
import {signUp} from '../../actions/session_actions';
import SignUpForm from './sign_up_form';
import {closeModal} from '../../actions/modal_actions';


const mapStateToProps = state => ({
  errors: state.session.errors
});

const mapDispatchToProps = dispatch => ({
  signUp: (user) => dispatch(signUp(user)),
  closeModal: () => dispatch(closeModal())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SignUpForm);
