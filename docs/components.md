## Component Hierarchy

**Header Container**
- Nav List
- Profile
- Search Container

**FooterContainer**
- Footer Info (contains HR Button)

**HomeSearchContainer**
- SearchContainer
- HelpComponent
- PopularComponent

**AuthFormContainer**
- AuthForm

**PostingListContainer**
- FilterForm
- PostingListIndex
  - PostingListIndexItem
- PostingDetailContainer
  - PostingDetail

**RelatedContainer**
- RelatedPostingIndex
  - RelatedPostingIndexItem

**NewReviewContainer**
- NewReviewForm
- ReviewSidebar

**CompanyListContainer**
- CompanyListIndex
  - CompanyListItem

**CompanyDetailContainer**
- CompanyDetail
- CompanyReviewContainer
- CompanyReviewItem

**NewPostingContainer**
- NewPostingForm

**EmployerHomeContainer**
- PostingListContainer
  - PostingListIndex
    - PostingListIndexItem
- EmployerHeaderContainer
  - PostingSummary

**SeekerHomeContainer**
- SavedPostingListContainer
  - SavedPostingIndex
    - SavedPostingIndexItem

**SalaryListContainer**
- SalaryFilter
- SalaryIndexContainer
  - SalaryIndex
    - SalaryIndexItem

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/search" | "HomeSearchContainer" |
| "/search/postings" | "PostingsListContainer" |
| "/jobs/:postingId" | "PostingDetailContainer" |
| "/search/companies" | "CompanyListContainer" |
| "/search/salaries" | "SalaryListContainer" |
| "/companies/:companyId" | "CompanyDetailContainer" |
| "/companies/:companyId/new-review" | "NewReviewForm" |
| "/profile" | "SeekerHomeContainer" |
| "/profile" | "EmployerHomeContainer" |
| "/new-posting" | "NewPostingContainer" |
