import * as Util from '../util/company_api_util';
import * as Actions from '../actions/company_actions';

const CompanyMiddleware = ({getState, dispatch}) => next => action => {
  const fetchAllSuccess = (companies) => (
    dispatch(Actions.receiveAllCompanies(companies))
  );

  const fetchOneSuccess = (company) => (
    dispatch(Actions.receiveOneCompany(company))
  );

  switch (action.type) {
    case Actions.REQUEST_ALL_COMPANIES:
      Util.fetchAllCompanies(action.searchType, fetchAllSuccess);
      return next(action);
    case Actions.REQUEST_ONE_COMPANY:
      Util.fetchOneCompany(action.id, fetchOneSuccess);
      return next(action);
    default:
      return next(action);

  }
};

export default CompanyMiddleware;
