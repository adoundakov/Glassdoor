```javascript
{
  currentUser: {
    id: 1,
    username: "hire-me",
    isEmployer: false,
    savedPostings: [1,2,55,13,6,8,234] // all posting IDs
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createPosting: {errors: ["position title can't be blank"]},
    createReview: {errors: ["Pros can't be blank"]}
  },
  postings: {
    1: {
      title: "Software Engineer",
      company: {id: 4, name: 'Google'},
      posterId: 24,
      applicants: [{id: 1, timeSlice: 88931}, {id: 64, timeSlice: 168123}],
      postedOn: "2016-03-08 11:33:33",
      postingUrl: "www.google.com/jobs/12341234"
    }
  },
  relatedPostings: [
    {id: 4, title: "Staff Engineer", company:"SolarCity"},
    {id: 55, title: "Commissioner", company:"NFL"}
  ],
  companies: {
    4: {
      name: "Google",
      size: "10000+ employees",
      hq: "Mountain View, CA",
      industry: "Tech"
      description: "is cool",
      CEO: "Sundar Pichai",
      reviews: [
        {id: 1, title: "Wow", pros:"cool company", cons:"lots of work", advice:"bring fiber to CA", approveCeo: true, rating: 4}
      ],
      postings: [
        {id: 1, title: "Software Engineer"}
      ],
      logoUrl: "www.google.com/logo",
      coverUrl: "www.google.com/cover_photo",
      salaries: {
        engineer: [123456, 123123, 121212, 111111, 98765],
        autonomousCarDriver: [55444, 66444, 44666]
      }
    }
  },
  reviews: {
    1: {
      id: 1,
      title: "Wow",
      pros: "cool company",
      cons: "lots of work",
      advice: "bring fiber to CA",
      approveCeo: true,
      rating: 4,
      currentEmployee: false,
      posType: "Full-time"
      authorId: 1
    }
  },
  salaries: {
    3: {
      title: "Staff Engineer",
      company: {id: 4, name: "Google"},
      area: 94040,
      authorId: 1,
      amount: 187314
    }
  },
  loading: false // used to add loading spinners to site
}
```
