import { connect } from 'react-redux';
import LandingSplash from './landing_splash';
import { setExistingQuery } from '../../actions/query_actions';

const mapStateToProps = (state) => ({
   existingQuery: state.existingQuery
 });

const mapDispatchToProps = (dispatch) => ({
   setExistingQuery: query => dispatch(setExistingQuery(query))
});

export default connect(mapStateToProps, mapDispatchToProps)(LandingSplash);
