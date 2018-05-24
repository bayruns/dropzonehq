import React from 'react';
import PropTypes from 'prop-types';

import VerifyForm from './VerifyForm.jsx';

export default class VerifyPopover extends React.Component {

    render() {
        return (
            <div placement="bottom" 
                     isOpen={this.props.isOpen} 
                     target={this.props.buttonID} 
                     toggle={this.props.toggle}
            >
                <div>{this.props.title}</div>
                <div>
                    <VerifyForm pinChanged={this.props.pinChanged} />
                    <button color="primary" onClick={this.props.verify}>Verify</button>{' '}
                    <button color="secondary" onClick={this.props.toggle}>Cancel</button>
                </div>
            </div>
        );
    }
}

VerifyPopover.propTypes = {
    isOpen: PropTypes.bool.isRequired, //whether this popover is open
    title: PropTypes.string.isRequired, //the title at the top of the modal
    buttonID: PropTypes.string.isRequired,
    toggle: PropTypes.func.isRequired, //the function to perform when the cancel button is clicked
    verify: PropTypes.func.isRequired,
    pinChanged: PropTypes.func.isRequired
  }