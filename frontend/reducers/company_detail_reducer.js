import { RECEIVE_ONE_COMPANY } from '../actions/company_actions';

const defaultCompany = {
  id: -1, name: '', company_url: '', logo_url: '', cover_url: '',
  location: '', description: '', ceo: '', size: '', postings: []
};

const CompanyDetailReducer = (state = defaultCompany, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ONE_COMPANY:
      return action.company;
    default:
      return state;
  }
};

export default CompanyDetailReducer;
