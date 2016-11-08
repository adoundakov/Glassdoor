export const createApplication = (postingId, application, success, error) => {
  $.ajax({
     type: 'POST',
     url: `/api/postings/${postingId}/posting_applications`,
     data: {posting_application: application},
     success,
     error
   });
};
