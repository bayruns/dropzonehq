import React from 'react';
import ItemDisplay from './ItemDisplay.jsx';

export default class RentalDisplayCanopy extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        return (
            <div>
                <div>
                    <div>
                        <ItemDisplay headerText="Rental Item Details"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <div>
                                            <p>Rental Status: {this.props.is_available ? "Available" : "Rented by " + this.props.renter_name}</p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <p>Canopy Brand: {this.props.brand}</p>
                                        </div>
                                        <div>
                                            <p>Canopy Size: {this.props.size}</p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <div>
                                                <p>Description:</p>
                                                <p>{this.props.description}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            {this.props.button}
                                        </div>
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
};