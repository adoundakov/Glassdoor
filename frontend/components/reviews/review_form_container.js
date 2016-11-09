import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { createReview } from '../../actions/review_actions';

const mapStateToProps = (state) => ({
   company: state.companyDetail,
   errors: state.reviews.errors
 });

 const mapDispatchToProps = (dispatch) => ({
    createReview: (review)=>{dispatch(createReview(review));}
 });

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);
