import React from 'react';
import ItemDisplay from './ItemDisplay.jsx';

export default class RentalDisplayRig extends React.Component {

    constructor(props) {
        super(props);
    }

    //love that fat Inline If-Else on the rental status
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
                                            <p>Main Canopy: {this.props.main_canopy_brand} {this.props.main_canopy_size}</p>
                                            <p>Container: {this.props.container_brand}</p>
                                        </div>
                                        <div>
                                            <p>Reserve Canopy: {this.props.reserve_canopy_brand} {this.props.reserve_canopy_size}</p>
                                            <p>AAD Lifespan: {this.props.aad_lifespan}</p>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <p>Description: {this.props.description}</p>
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