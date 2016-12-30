import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import PostingMiddleware from './posting_middleware';
import CompanyMiddleware from './company_middleware';
import ApplicationMiddleware from './application_middleware';
import ReviewMiddleware from './review_middleware';
import createLogger from 'redux-logger';

const LoggerMiddleware = createLogger();

const RootMiddleware = applyMiddleware(
  LoggerMiddleware,
  SessionMiddleware,
  PostingMiddleware,
  CompanyMiddleware,
  ApplicationMiddleware,
  ReviewMiddleware
);

export default RootMiddleware;
