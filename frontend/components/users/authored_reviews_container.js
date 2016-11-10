import { connect } from 'react-redux';
import AuthoredReviews from './authored_reviews';

const mapStateToProps = (state) => ({
   reviews: state.reviews.reviews
 });

export default connect(mapStateToProps)(AuthoredReviews);
