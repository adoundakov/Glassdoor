export const REQUEST_ALL_POSTINGS = "REQUEST_ALL_POSTINGS";
export const REQUEST_ONE_POSTING = "REQUEST_ONE_POSTING";
export const RECEIVE_ALL_POSTINGS = "RECEIVE_POSTINGS";
export const RECEIVE_ONE_POSTING = "RECEIVE_POSTING";

export const requestAllPostings = () => ({
  type: REQUEST_ALL_POSTINGS
});

export const requestOnePosting = (id) => ({
  type: REQUEST_ONE_POSTING,
  id
});

export const receiveAllPostings = (postings) => ({
  type: RECEIVE_ALL_POSTINGS,
  postings
});

export const receiveOnePosting = (posting) => ({
  type: RECEIVE_ONE_POSTING,
  posting
});
