export const createReview = (review, success, error) => {
  $.ajax({
     type: 'POST',
     url: `/api/companies/${review.company_id}/reviews`,
     data: {review},
     success,
     error
   });
};

export const fetchReviews = (id, searchType, success) => {
  $.ajax({
     type: 'GET',
     url: `/api/companies/${id}/reviews`,
     data: {search_type: searchType},
     success
   });
};
