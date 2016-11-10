export const fetchAllCompanies = (searchType, success, query) => {
  $.ajax({
     type: 'GET',
     url: '/api/companies',
     data: {search_type: searchType, query},
     success
   });
};

export const fetchOneCompany = (companyId, success) => {
  $.ajax({
     type: 'GET',
     url: `/api/companies/${companyId}`,
     success
   });
};
