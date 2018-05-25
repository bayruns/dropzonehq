import React from 'react';
import DropzoneHQNav from '../Navs/DropzoneHQNav.jsx';
import { Link } from 'react-router-dom';

export default class LandingScreen extends React.Component {

    render() {
        return (
            <div>
                <DropzoneHQNav />
                <div id="main_body">
                    <div>
                        <div className="mainscreen_col" xs={{ size: 12 }}>
                            <img src="http://svgshare.com/i/3vT.svg" className="behind_nav img-responsive img-circle center-block" height="100" width="100" alt=""></img>
                        </div>
                        <div className="mainscreen_col" xs={{ size: 12 }}>
                            <h1>Areas</h1>
                        </div>
                    </div>
                    <div>
                        <div className="mainscreen_col" xs={{ size: 12 }}>
                            <Link to='/employee-info'><button className="btn_transparent" size="lg">Employee Info</button></Link>
                            <Link to='/employee-management'><button className="btn_transparent" size="lg">Employee Management</button></Link>
                            <Link to='/rental-menu'><button className="btn_transparent" size="lg">Rentals</button></Link>
                            <Link to='/rig-sheets'><button className="btn_transparent" size="lg">Rigsheets</button></Link>
                            <Link to='/inventory-menu'><button className="btn_transparent" size="lg">Inventory</button></Link>
                            <Link to='/loft-menu'><button className="btn_transparent" size="lg">Loft</button></Link>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}