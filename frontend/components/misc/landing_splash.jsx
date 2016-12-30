import React, { Component } from 'react';
import { hashHistory } from 'react-router';

class LandingSplash extends React.Component {
  constructor(props) {
    super(props);
    this.handleCategoryClick = this.handleCategoryClick.bind(this);
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = {category: 'jobs', query: ''};
    this.setExistingQuery = props.setExistingQuery.bind(this);
  }

  componentWillMount() {
    this.setExistingQuery('')
  }

  handleCategoryClick (tgt) {
    return e => {
      e.preventDefault();
      this.setState({category: tgt});
    };
  }

  handleSubmit() {
    console.log('SUBMIT FROM HOME PAGE');
    this.setExistingQuery(this.state.query);
    hashHistory.push(`/${this.state.category}`);
  }

  update (e) {
    e.preventDefault();
    this.setState({query: e.target.value});
  }

  render () {
    let searchText;
    switch (this.state.category) {
      case 'jobs':
        searchText = 'Search Jobs by Title';
        break;
      case 'companies':
        searchText = 'Search Companies by Name';
        break;
      case 'salaries':
        searchText = 'Salary search coming soon!';
        break;
      default:
        searchText = 'Search';
    }

    return (
      <div className='landing-background'>
        <section className='landing-splash'>
          <h2>Let's Get The Job.</h2>
          <form className='search-box' onSubmit={this.handleSubmit}>
            <ul>
              <li onClick={this.handleCategoryClick('jobs')}
                  className={this.state.category === 'jobs' ? 'active-cat' : ''}>Jobs</li>
              <li onClick={this.handleCategoryClick('companies')}
                  className={this.state.category === 'companies' ? 'active-cat' : ''}>Companies</li>
              <li onClick={this.handleCategoryClick('salaries')}
                  className={this.state.category === 'salaries' ? 'active-cat' : ''}>Salaries</li>
            </ul>
            <div>
              <input className='search-box-input'
                     type='text'
                     placeholder={searchText}
                     disabled={this.state.category === 'salaries' ? true : false}
                     onChange={this.update}/>
                   <button className='cf' type='submit' onClick={this.handleSubmit}><img src='https://res.cloudinary.com/adoundakov/image/upload/v1478824843/images/magnifying-glass-white_wllggt.png' alt='search'/></button>
            </div>
          </form>
        </section>
      </div>
    );
  }
}

export default LandingSplash;
