import Modal, {closeStyle} from 'simple-react-modal';
import React from 'react';
import SessionForm from './session/session_form';

export default class App extends React.Component{

  constructor(){
    super();
    this.state = {};
  }

  show(){
    this.setState({show: true});
  }

  close(){
    this.setState({show: false});
  }


  render(){
    return (
      <div>
      <a onClick={this.show.bind(this)}>Open Modal</a>
      <Modal
      style={{transition: 'opacity 100ms'}}
      transitionSpeed={125}
      closeOnOuterClick={true}
      show={this.state.show}
      onClose={this.close.bind(this)}>

      <a className='modal-close' onClick={this.close.bind(this)}>X</a>
      <SessionForm />

      </Modal>
      </div>
    );
  }
}
