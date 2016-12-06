import { connect } from 'react-redux';
import CompanyResults from './company_results';
import { selectAllCompanies } from '../../reducers/selectors';
import { requestAllCompanies,
         requestOneCompany} from '../../actions/company_actions';
import { openModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => ({
   companies: selectAllCompanies(state),
   currentUser: state.session.currentUser,
   existingQuery: state.existingQuery
 });

const mapDispatchToProps = (dispatch) => ({
  requestAllCompanies: searchType => dispatch(requestAllCompanies(searchType)),
  requestOneCompany: id => dispatch(requestOneCompany(id)),
  openModal: () => dispatch(openModal())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CompanyResults);
