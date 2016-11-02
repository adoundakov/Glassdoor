import React from 'react';
import Header from './misc/header';
import Footer from './misc/footer';

// needed for material-ui components
import injectTapEventPlugin from 'react-tap-event-plugin';
injectTapEventPlugin();

const App = ({ children }) => (
  <div>
    <Header/>
    {children}
    <Footer/>
  </div>
);

export default App;
