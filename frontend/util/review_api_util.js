export const createReview = (review, success, error) => {
  $.ajax({
     type: 'POST',
     url: `/api/companies/${review.company_id}/reviews`,
     data: {review},
     success,
     error
   });
};
