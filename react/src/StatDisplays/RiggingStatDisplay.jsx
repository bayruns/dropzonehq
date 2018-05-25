import React from 'react';
import StatDisplay from './StatDisplay.jsx';


export default class RiggingStatDisplay extends React.Component {
    constructor(props) {
        super(props);
        this.state={};

    } 

    render() {
        return (
            <div>
                <div>
                    <div>
                        <StatDisplay headerText="Rigging Stats"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <p>Reserves Packed Today: {this.state.reservesPackedToday}</p>
                                        <p>Reserves Packed This Week: {this.state.reservesPackedWeek}</p>
                                        <p>Reserves Packed This Month: {this.state.reservesPackedMonth}</p>
                                        <p>Reserves Packed This Year: {this.state.reservesPackedYear}</p>
                                        <p>Reserves Packed Total: {this.state.reservesPackedTotal}</p>
                                    </div>
                                    <div>
                                        <p>Total Saves: {this.state.reserveSaves}</p>                                        
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
};


