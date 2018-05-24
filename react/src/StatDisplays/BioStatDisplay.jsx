import React from 'react';
import StatDisplay from './StatDisplay.jsx';



export default class BioStatDisplay extends React.Component {
    constructor(props) {
        super(props);
        
        //Test data
        this.state = {
            visible: true,  //Bio will always be visible
            show: true,     //allow collapse and expand
            firstName: "Brian",
            lastName: "Krick",
            employmentDate: "04/2010",
            jumpCount: 7,
            bio: "Are we done yet?",
        };
        //---------
    }
   

    render() {
        return (
            <div>
                <div>
                    <div>
                        <StatDisplay headerText="Bio"
                            statsToDisplay={
                                <div>
                                    <div>
                                        <p>FirstName: {this.props.firstName}</p>
                                    </div>
                                    <div>
                                        <p>Last Name: {this.props.lastName}</p>
                                    </div>
                                </div>
                            } />
                    </div>
                </div>
            </div>
        );
    }
}