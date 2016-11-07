export const REQUEST_ALL_POSTINGS = "REQUEST_ALL_POSTINGS";
export const REQUEST_ONE_POSTING = "REQUEST_ONE_POSTING";
export const RECEIVE_ALL_POSTINGS = "RECEIVE_POSTINGS";
export const RECEIVE_ONE_POSTING = "RECEIVE_POSTING";
export const SAVE_POSTING = "SAVE_POSTING";
export const UN_SAVE_POSTING = "UN_SAVE_POSTING";

export const requestAllPostings = (searchType) => ({
  type: REQUEST_ALL_POSTINGS,
  searchType
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

export const savePosting = (postingId) => ({
  type: SAVE_POSTING,
  postingId
});

export const unSavePosting = (postingId) => ({
  type: UN_SAVE_POSTING,
  postingId
});
