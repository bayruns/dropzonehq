import React from 'react';
import StatDisplay from './StatDisplay.jsx';


export default class TandemInstructorStatDisplay extends React.Component {
    constructor(props) {
        super(props);        
    } 

    render() {
        return (
            <div>
                <div>
                    <div>
                        <StatDisplay headerText="Tandem Instructor Stats"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <p>Tandem Jumps Today: {this.props.tandemJumpsToday}</p>
                                        <p>Tandem Jumps This Week: {this.props.tandemJumpsWeek}</p>
                                        <p>Tandem Jumps This Month: {this.props.tandemJumpsMonth}</p>
                                        <p>Tandem Jumps This Year: {this.props.tandemJumpsYear}</p>
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
};

 