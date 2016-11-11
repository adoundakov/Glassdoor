import { requestAllCompanies } from '../../actions/company_actions';
import { requestAllPostings } from '../../actions/posting_actions';
import { connect } from 'react-redux';
import SearchBar from './search_bar';

const mapStateToProps = (state) => ({
   existingQuery: state.existingQuery
 });

const mapDispatchToProps = (dispatch) => ({
  requestAllCompanies: (searchType, query) => (
    dispatch(requestAllCompanies(searchType, query))),
  requestAllPostings: (searchType, query) => (
      dispatch(requestAllPostings(searchType, query)))
});

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar);
