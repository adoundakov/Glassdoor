export const fetchAllPostings = (success) => {
  $.ajax({
     type: 'GET',
     url: '/api/postings',
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
