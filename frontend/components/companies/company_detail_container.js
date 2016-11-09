import { connect } from 'react-redux';
import CompanyDetail from './company_detail';
import { openModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => ({
   company: state.companyDetail,
   currentUser: state.session.currentUser
 });

 const mapDispatchToProps = (dispatch) => ({
    openModal: () => dispatch(openModal())
 });

export default connect(mapStateToProps, mapDispatchToProps)(CompanyDetail);
