import React from 'react';
import Tabs from './tabs';
import LoginFormContainer from './log_in_form_container';
import SignupFormContainer from './sign_up_form_container';

const SessionForm = ({clearErrors}) => {
  let panes = [{title: "Sign Up", content: <SignupFormContainer />},
              {title: "Sign In", content: <LoginFormContainer />}];

  return (
    <Tabs panes={panes}
          clearErrors={clearErrors}/>
  );
};

export default SessionForm;
