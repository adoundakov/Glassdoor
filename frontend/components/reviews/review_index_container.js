import { connect } from 'react-redux';
import ReviewIndex from './review_index';
import { openModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => ({
   reviews: state.reviews.reviews,
   company: state.companyDetail,
   currentUser: state.session.currentUser
 });

const mapDispatchToProps = (dispatch) => ({
   openModal: ()=>{dispatch(openModal());}
});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewIndex);
