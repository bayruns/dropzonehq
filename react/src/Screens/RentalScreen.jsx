import React from 'react';

import RentalTable from '../Tables/RentalTable.jsx';
import BlankItemDisplay from '../ItemDisplays/BlankItemDisplay.jsx';
import DropzoneHQNav from '../Navs/DropzoneHQNav.jsx';
import Binder from '../Binder.js';

const marginStyle = {
    marginTop: 25,
    marginBottom: 25
};

class RentalScreen extends React.Component {

    constructor(props) {
        super(props);

        //creater a new binder and bind all of the methods in this class
        var binder = new Binder();
        binder.bindAll(this, RentalScreen);

        this.displayChange = this.displayChange.bind(this);
        this.resetDisplay = this.resetDisplay.bind(this);

        this.state = {
            currentItem: <BlankItemDisplay headerText={"Rental Item Details"}/>
        }
    }

    //changes the display of the right side of the screen by
    //taking in a RentalItemDisplay and setting it in the currentItem state
    displayChange(itemDisplay, rowID) {
        if (itemDisplay) {
            this.setState({
                currentItem: itemDisplay
            })
        } else {

        }
    }

    resetDisplay() {
        this.setState({
            currentItem: <BlankItemDisplay headerText={"Rental Item Details"}/>
        });
    }

    render() {
        return (
            <div>
                <div>
                    <div lg={{ size: 12 }}>
                        <DropzoneHQNav/>
                    </div>
                </div>
                <div style={marginStyle}>
                    <div lg={{ size: 5, offset: 1 }}>
                        <RentalTable displayChange={this.displayChange} resetDisplay={this.resetDisplay}/>
                    </div>
                    <div lg={{ size: 5}}>
                        <div body>
                            {this.state.currentItem}
                        </div>
                    </div>
                </div>
            </div>
        );
    }
};

export default RentalScreen;