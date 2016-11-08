import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import PostingMiddleware from './posting_middleware';
import CompanyMiddleware from './company_middleware';
import ApplicationMiddleware from './application_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  PostingMiddleware,
  CompanyMiddleware,
  ApplicationMiddleware
);

export default RootMiddleware;
