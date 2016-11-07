import { connect } from 'react-redux';
import CompanyResults from './company_results';
import { selectAllCompanies } from '../../reducers/selectors';
import { requestAllCompanies,
         requestOneCompany} from '../../actions/company_actions';

const mapStateToProps = (state) => ({
   companies: selectAllCompanies(state)
 });

const mapDispatchToProps = (dispatch) => ({
  requestAllCompanies: (searchType) => dispatch(requestAllCompanies(searchType)),
  requestOneCompany: (id) => dispatch(requestOneCompany(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CompanyResults);
