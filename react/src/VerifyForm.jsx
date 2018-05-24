import React from 'react';



/*
    A VerifyForm is a form that contains a username 
    and password field, used for verifying 
*/
export default class VerifyForm extends React.Component {
    

    constructor(props){
        super(props);
        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(e){
        this.props.pinChanged(this.props.id, e.target.value);
    }
    //pass the corresponding onchange methods down to the child components so 
    //we can get their values back here when they are changed
    render() {
        return (
            <form>
            <div>
            <div>
              <divAddon>PIN:</divAddon>
              <div autoFocus onChange={this.handleChange} type="password" name="password" id="pinEntryField"
               placeholder={this.props.placeholder} />
            </div>
          </div>
          </form>           
        );
    }
}