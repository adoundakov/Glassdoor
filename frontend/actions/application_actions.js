export const CREATE_APPLICATION = 'CREATE_APPLICATION';
export const RECEIVE_APP_ERRORS = 'RECEIVE_APP_ERRORS';

export const createApplication = (application) => ({
  type: CREATE_APPLICATION,
  application,
  postingId: application.postingId
});

export const receiveAppErrors = (errors) => ({
  type: RECEIVE_APP_ERRORS,
  errors
});
