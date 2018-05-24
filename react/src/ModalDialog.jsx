import React from 'react';
import PropTypes from 'prop-types';
 

/*A ModalDialog is a Reactstrap Modal that has a title, body content, 
  and 2 buttons: 
    1 whose action&text are controlled via props, 
    1 whose text is always 'Cancel' and whose action is controlled via props.
*/
 export default class ModalDialog extends React.Component {
     render() {
       return (
          <div toggle={this.props.onCancelClick} isOpen={this.props.isOpen}>
          <div>{this.props.title}</div>
          <div>
            {this.props.children}
          </div>
          <div>
            <button id={this.props.primaryButtonID} color="primary" onClick={this.props.onPrimaryClick}>{this.props.primaryButtonText}</button>{' '}
            <button color="secondary" onClick={this.props.onCancelClick}>Cancel</button>
          </div>
        </div>
       );
     }
 }

 ModalDialog.propTypes = {
    isOpen: PropTypes.bool.isRequired, //whether the modal is open
    title: PropTypes.string.isRequired, //the title at the top of the modal
    onPrimaryClick: PropTypes.func.isRequired, //the function to perform when the primary button is clicked
    primaryButtonText: PropTypes.string.isRequired, //the text on the primary button
    onCancelClick: PropTypes.func.isRequired //the function to perform when the cancel button is clicked
  }