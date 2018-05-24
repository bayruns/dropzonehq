import React from 'react';
import ChangeScreenButton from '../Buttons/ChangeScreenButton.jsx';
import BioStatDisplay from '../StatDisplays/BioStatDisplay.jsx';
import RiggingStatDisplay from '../StatDisplays/RiggingStatDisplay.jsx';
import TandemInstructorStatDisplay from '../StatDisplays/TandemInstructorStatDisplay.jsx';
import AFPInstructorStatDisplay from '../StatDisplays/AFPInstructorStatDisplay.jsx';
import PackingStatDisplay from '../StatDisplays/PackingStatDisplay.jsx';
import RentalStatDisplay from '../StatDisplays/RentalStatDisplay.jsx';

import DropzoneHQNav from '../Navs/DropzoneHQNav.jsx';

const marginStyle = {
    marginTop: 25,
    marginBottom: 25

};

export default class EmployeeInfoScreen extends React.Component {

    render() {
        return (
            <div>
                <div>
                    <div lg={{ size: 12 }}>
                        <DropzoneHQNav/>
                    </div>
                </div>
                <div style={marginStyle}>
                    <div lg={{ size: 10, offset: 1 }}>
                        <div>
                            <div>Employee Info</div>
                            <div>
                                <BioStatDisplay />

                                <RiggingStatDisplay />

                                <TandemInstructorStatDisplay />

                                <AFPInstructorStatDisplay />

                                <PackingStatDisplay />

                                <RentalStatDisplay />
                            </div>
                        </div>
                    </div>
                </div>
                <div style={marginStyle}>
                    <div lg={{ size: 10, offset: 1 }}>
                        <ChangeScreenButton screen={<EmployeeInfoScreen />}
                            changeScreen={this.props.changeScreen}
                            buttonText="Change User" />
                    </div>
                </div>
            </div>
        );
    }
};

