import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import ModalReducer from './modal_reducer';
import PostingReducer from './posting_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  modal: ModalReducer,
  postingDetail: PostingReducer,
  postings: PostingReducer
});

export default RootReducer;
