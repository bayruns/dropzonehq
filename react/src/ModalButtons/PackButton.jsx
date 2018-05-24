import React from 'react';
import VerifyForm from '../VerifyForm.jsx';

/*
  A PackButton is a button for rigsheets.
  It says pack, and when clicked, displays a modal
  that prompts the user to authorize with their ID, 
  then marks the rig as packed.
*/
export default class PackButton extends React.Component {

  constructor(props) {
    super(props);
    
    //bind our onchange methods so they can be passed properly 
    //with this.methodName from the onChange props in render
    this.toggleVerifyModal = this.toggleVerifyModal.bind(this);
    this.packButton = this.packButton.bind(this);

    //keep state for the values of the components in this modal
    this.state = {
      verifyOpen: false
    }
  }

  //change the VERFIY modal's visibility via state
  toggleVerifyModal() {
    this.setState({
      verifyOpen: !this.state.verifyOpen
    });
  }

  packButton(){
    //TODO make this use the stuff from verify in rigsheet instead of signout id and instructor
    this.props.authorize(this.props.signout_id, this.props.index);
  }
  
  render() {
    console.log(this.props.index);
    var buttonID = "PackButton" + this.props.index + this.props.sheetType;
    return (
      <div>
        <button size="md" color="primary"
          onClick={this.toggleVerifyModal} id={buttonID}>Pack</button>

        <div placement="bottom" isOpen={this.state.verifyOpen} target={buttonID} toggle={this.toggleVerifyModal}>
          <div>Verify Packing</div>
          <div>
            <VerifyForm pinChanged={this.props.pinChanged}/>
            <button color="primary" onClick={this.packButton}>Verify</button>{' '}
            <button color="secondary" onClick={this.toggleVerifyModal}>Cancel</button>
          </div>
        </div>
      </div>
    );
  }
}
