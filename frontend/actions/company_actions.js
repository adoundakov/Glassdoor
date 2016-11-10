export const REQUEST_ALL_COMPANIES = "REQUEST_ALL_COMPANIES";
export const REQUEST_ONE_COMPANY = "REQUEST_ONE_COMPANY";
export const RECEIVE_ALL_COMPANIES = "RECEIVE_ALL_COMPANIES";
export const RECEIVE_ONE_COMPANY = "RECEIVE_ONE_COMPANY";

export const requestAllCompanies = (searchType, query) => ({
  type: REQUEST_ALL_COMPANIES,
  searchType,
  query
});

export const requestOneCompany = (id) => ({
  type: REQUEST_ONE_COMPANY,
  id
});

export const receiveAllCompanies = (companies) => ({
  type: RECEIVE_ALL_COMPANIES,
  companies
});

export const receiveOneCompany = (company) => ({
  type: RECEIVE_ONE_COMPANY,
  company
});
