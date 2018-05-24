import React from 'react';

import EmployeeTable from '../Tables/EmployeeTable.jsx';
import DropzoneHQNav from '../Navs/DropzoneHQNav.jsx';

const marginStyle = {
    marginTop: 25,
    marginBottom: 25

};

class EmployeeAdminScreen extends React.Component {
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
                        <EmployeeTable />
                    </div>
                </div>
            </div>
        );
    }
};

export default EmployeeAdminScreen;