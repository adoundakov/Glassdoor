import React, { Component } from 'react';
import Countdown from 'react-count-down';

class TestComponent extends Component {
  render () {
    let OPTIONS = { endDate: '11/11/2016 06:00 PM',
                    prefix: ' until easyHire is live!' };
    return (
      <div>
        <Countdown options={OPTIONS} />
      </div>
    );
  }
}

const LandingSplash = () => (
  <div className='landing-background'>
    <section className='landing-splash'>
      <h2>Let's Get A Job.</h2>
      <TestComponent/>
    </section>
  </div>
);

export default LandingSplash;
