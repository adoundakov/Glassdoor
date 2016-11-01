import React from 'react';

const App = ({ children }) => (
  <div className='header-bar'>
    <h1>easyHire</h1>
    {children}
  </div>
);

export default App;
