import {connect} from 'react-redux';
import Header from './header';
import {logOut} from '../../actions/session_actions';
import {openModal, closeModal} from '../../actions/modal_actions';

const mapStateToProps = state => ({
  loggedIn: state.session.currentUser ? true : false,
  currentUserId: state.session.currentUser ? state.session.currentUser.id : undefined,
  modal: state.modal
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  logOut: () => dispatch(logOut()),
  openModal: () => dispatch(openModal()),
  closeModal: () => dispatch(closeModal())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
