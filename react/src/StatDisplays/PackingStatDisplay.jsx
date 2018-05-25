import React from 'react';
import StatDisplay from './StatDisplay.jsx';


export default class BioStatDisplay extends React.Component {
    constructor(props) {
        super(props);
        this.state={};
    }

    render() {
        return (
            <div>
                <div>
                    <div>
                        <StatDisplay headerText="Packing Stats"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <p>Tandems Packed Today: {this.state.tandemsPackedToday}</p>
                                        <p>Tandems Packed This Week: {this.state.tandemsPackedWeek}</p>
                                        <p>Tandems Packed This Month: {this.state.tandemsPackedMonth}</p>
                                        <p>Tandems Packed This Year: {this.state.tandemsPackedYear}</p>
                                    </div>
                                    <div>
                                        <p>Students Packed Today: {this.state.studentsPackedToday}</p>
                                        <p>Students Packed This Week: {this.state.studentsPackedWeek}</p>
                                        <p>Students Packed This Month: {this.state.studentsPackedMonth}</p>
                                        <p>Students Packed This Year: {this.state.studentsPackedYear}</p>
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
}