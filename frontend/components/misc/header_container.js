import {connect} from 'react-redux';
import Header from './header';
import {logOut} from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: state.session.currentUser ? true : false,
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  logOut: () => dispatch(logOut())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
