import { values } from 'lodash';

export const selectAllPostings = ({ postings }) => values(postings);
export const selectAllCompanies = ({ companies }) => values(companies);
