import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import ModalReducer from './modal_reducer';
import PostingReducer from './posting_reducer';
import PostingDetailReducer from './posting_detail_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  modal: ModalReducer,
  postingDetail: PostingDetailReducer,
  postings: PostingReducer
});

export default RootReducer;
