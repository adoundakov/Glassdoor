import * as Modal from '../actions/modal_actions';

const ModalReducer = (state = false, action) => {
  Object.freeze(state);

  switch (action.type) {
    case Modal.OPEN_MODAL:
      return true;
    case Modal.CLOSE_MODAL:
      return false;
    default:
      return state;
  }
};

export default ModalReducer;
