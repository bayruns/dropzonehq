import React from 'react';
import StatDisplay from './StatDisplay.jsx';


export default class RentalStatDisplay extends React.Component {
    constructor(props) {
        super(props);
        this.state={};

    }  

    render() {
        return (
            <div>
                <div>
                    <div>
                        <StatDisplay headerText="Rental Stats"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <p>You Rented Out {this.state.RentalsToday} Rigs Today </p>
                                        <p>You Rented Out {this.state.RentalsWeek} Rigs This Week </p>
                                        <p>You Rented Out {this.state.RentalsMonth} Rigs This Month </p>
                                        <p>You Rented Out {this.state.RentalsYear} Rigs This Year </p>
                                        <p>You Rented Out {this.state.RentalsTotal} Rigs In Total</p>
                                    </div>
                                    <div>
                                        <p>You Returned {this.state.ReturnsToday} Rigs Today </p>
                                        <p>You Returned {this.state.ReturnsWeek} Rigs This Week </p>
                                        <p>You Returned {this.state.ReturnsMonth} Rigs This Month </p>
                                        <p>You Returned {this.state.ReturnsYear} Rigs This Year </p>
                                        <p>You Returned {this.state.ReturnsTotal} Rigs In Total</p>
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
};

