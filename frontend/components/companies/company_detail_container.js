import { connect } from 'react-redux';
import CompanyDetail from './company_detail';

const mapStateToProps = (state) => ({
   company: state.companyDetail
 });

export default connect(mapStateToProps)(CompanyDetail);
