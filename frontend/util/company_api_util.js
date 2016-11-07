export const fetchAllCompanies = (searchType, success) => {
  $.ajax({
     type: 'GET',
     url: '/api/companies',
     data: {search_type: searchType},
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
