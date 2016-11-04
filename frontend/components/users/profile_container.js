import { connect } from 'react-redux';
import UserProfile from './profile';

const mapStateToProps = (state) => ({
   currentUser: state.session.currentUser
 });

export default connect(mapStateToProps)(UserProfile);
