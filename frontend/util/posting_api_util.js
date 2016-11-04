export const fetchAllPostings = (searchType, success) => {
  $.ajax({
     type: 'GET',
     url: '/api/postings',
     data: {search_type: searchType},
     success
   });
};

export const fetchOnePosting = (id, success) => {
  $.ajax({
     type: 'GET',
     url: `/api/postings/${id}`,
     success
   });
};
