import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import PostingMiddleware from './posting_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  PostingMiddleware
);

export default RootMiddleware;
