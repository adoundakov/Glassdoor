import React from 'react';
import {Provider} from 'react-redux';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import {red700} from 'material-ui/styles/colors';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import getMuiTheme from 'material-ui/styles/getMuiTheme';

import App from './app';
import SessionFormContainer from './session/session_form_container';
import ConstructionSplash from './misc/construction';

const muiTheme = getMuiTheme({
  appBar: {
    height: 38
  }
});

const Root = ({ store }) => {
  const _redirectIfLoggedIn = (nextState, replace) => {
    if (store.getState().session.currentUser) {
      replace('/');
    }
  };

  return (
    <MuiThemeProvider muiTheme={muiTheme}>
      <Provider store={store}>
        <Router history={hashHistory}>
          <Route path={'/'} component={App}>
            <IndexRoute component={ConstructionSplash}/>
            <Route path='login' component={SessionFormContainer} onEnter={_redirectIfLoggedIn} />
            <Route path='signup' component={SessionFormContainer} onEnter={_redirectIfLoggedIn} />
          </Route>
        </Router>
      </Provider>
    </MuiThemeProvider>
  );
};

export default Root;
