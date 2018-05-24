import React from 'react';
import SiteNavbar from './SiteNavbar.jsx';
import { Link } from 'react-router-dom'

/*
    A SiteNavbar is a light styled Reactstrap Navbar that collapses on smaller screens.
    The brand text, brand link are passed via props.
    All of the NavItems are passed via props.children.
*/
export default class DropzoneHQNav extends React.Component {

    render() {
        return (
            <SiteNavbar brandImage={"http://svgshare.com/i/3vT.svg"}
                brandText="Dropzone HQ" brandLink="#">
                <div className="dzhq_nav_item">
                        <Link to='/dropzone-home'>Home</Link>
                </div>
                        <div className="dzhq_nav_item">
                <Link to='/employee-info'>Stats</Link>
                </div>
                <div className="dzhq_nav_item">
                        <Link to='/employee-management'>Employee Admin</Link>
                </div>
                <div className="dzhq_nav_item">
                        <Link to='/rental-menu'>Rentals</Link>
                </div>
                <div className="dzhq_nav_item">
                        <Link to='/rig-sheets'>Rigsheets</Link>
                </div>
                <div className="dzhq_nav_item">
                        <Link to='/inventory-menu'>Inventory</Link>
                </div>
                <div className="dzhq_nav_item">
                        <Link to='/loft-menu'>Loft</Link>
                </div>
            </SiteNavbar >
        );
    }
}