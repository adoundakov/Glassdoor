import React from 'react';
import {Link} from 'react-router';
import Tabs from './tabs';
import LoginFormContainer from './log_in_form_container';
import SignupFormContainer from './sign_up_form_container';

const SessionForm = () => {
  let klass = "hidden";
  let panes = [{title: "Sign Up", content: <SignupFormContainer />},
              {title: "Sign In", content: <LoginFormContainer />}];
  const toggleKlass = () => {
    klass === "hidden" ? klass = "" : klass = "hidden";
  };

  return (
    <section className='session-form'>
      <Tabs panes={panes}/>
    </section>
  );
};

export default SessionForm;
