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

export const savePosting = (postingId, success) => {
  $.ajax({
     type: 'POST',
     url: `/api/postings/${postingId}/posting_saves`,
     success
   });
};

export const unSavePosting = (postingId, success) => {
  $.ajax({
     type: 'DELETE',
     url: '/api/posting_saves/1',   // need placeholder number, for rails route
     data: {postingId},
     success
   });
};
