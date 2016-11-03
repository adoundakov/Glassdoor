import React, { Component, PropTypes } from 'react';
import Countdown from 'react-count-down';

class TestComponent extends Component {
  render () {
    let OPTIONS = { endDate: '11/11/2016 06:00 PM',
                    prefix: 'until easyHire is live!' };
    return (
      <div>
        <Countdown options={OPTIONS} />
      </div>
    );
  }
}

const ConstructionSplash = () => (
  <section className='construction-splash'>
    <TestComponent />
    <div>Please pardon our dust</div>
  </section>
);

export default ConstructionSplash;
