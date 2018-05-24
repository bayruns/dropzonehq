import React from 'react';
import StatDisplay from './StatDisplay.jsx';


export default class AFPInstructorStatDisplay extends React.Component {
    constructor(props) {
        super(props);        
    }

    render() {
        return (
            <div>
                <div>
                    <div>
                        <StatDisplay headerText="AFP Instructor Stats"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <p>AFP Jumps Today: {this.props.AFPJumpsToday}</p>
                                        <p>AFP Jumps This Week: {this.props.AFPJumpsWeek}</p>
                                        <p>AFP Jumps This Month: {this.props.AFPJumpsMonth}</p>
                                        <p>AFP Jumps This Year: {this.props.AFPJumpsYear}</p>
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
};

