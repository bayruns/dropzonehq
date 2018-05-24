import React from 'react';

import Rigsheet from '../Tables/Rigsheet.jsx';
import RigAlertsContainer from '../RigAlertsContainer.jsx';
import DropzoneHQNav from '../Navs/DropzoneHQNav.jsx';

const marginStyle = {
    marginTop: 25,
    marginBottom: 25
};

/*
    SheetsScreen is a view for seeing the tandem and
    student rigsheets, any errors/reports for rigs that
    instructors and packers should know, signing out rigs,
    reporting rigs as packed, and report rig damage.

    All related features as per the design will also be 
    covered here.
*/
export default class SheetsScreen extends React.Component {
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
                        <Rigsheet title={"Tandem Signouts"} sheetType="tandem" />
                    </div>
                    <div lg={{ size: 5 }}>
                         <Rigsheet title={"Student Signouts"} sheetType="student"/>
                    </div>
                </div>
                <div style={marginStyle}>
                    <div lg={{ size: 10, offset: 1 }}>
                        <RigAlertsContainer/>
                    </div>
                </div>
            </div>
        );
    }
};