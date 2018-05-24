import React from 'react';
import VerifyForm from '../VerifyForm.jsx';

export default class ReturnButton extends React.Component {
    constructor(props) {
        super(props);
        this.toggleVerifyModal = this.toggleVerifyModal.bind(this);
        this.callReturnItem = this.callReturnItem.bind(this);

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

    callReturnItem() {
        this.toggleVerifyModal();
        this.props.return(this.props.index, this.props.rental_id); 
    }
   

    render() {
        var buttonID = "ReturnButton" + this.props.index;

        return (
            <div>
                <button onClick={this.toggleVerifyModal}
                    size="lg"
                    color="primary"
                    id={buttonID} > {"Return"} </button>

                <div placement="bottom" isOpen={this.state.verifyOpen} target={buttonID} toggle={this.toggleVerifyModal}>
                    <div>{"Verify Return"}</div>
                    <div>
                        <VerifyForm pinChanged={this.props.pinChanged} />
                        <button color="primary" onClick={this.callReturnItem}>Verify</button>{' '}
                        <button color="secondary" onClick={this.toggleVerifyModal}>Cancel</button>
                    </div>
                </div>
            </div>
        );
    }
}