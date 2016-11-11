import {SET_EXISTING_QUERY} from '../actions/query_actions';

const QueryReducer = (state = '', action) => {
  Object.freeze(state);

  switch (action.type) {
    case SET_EXISTING_QUERY:
      return action.query;
    default:
      return state;
  }
};

export default QueryReducer;
