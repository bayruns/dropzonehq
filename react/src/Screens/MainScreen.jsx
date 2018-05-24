import React from 'react';
import { Link } from 'react-router-dom';

export default class MainScreen extends React.Component {

    render() {
        return (
            <div id="main_body">
                <div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <h1>Dropzone HQ</h1>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <img src="http://svgshare.com/i/3vT.svg" className="behind_nav img-responsive img-circle center-block" height="225" width="225" alt="computer with parachute logo"></img>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <h3 className="title_color">A web-based solution for skydiving dropzone management.</h3>
                    </div>
                </div>
                <div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                    <Link to='/dropzone-home'><button className="btn_transparent" size="lg">Ya gotta log in to use this screen but it's going to be here for test purposes so click me to get thru to the rest of the application</button></Link>

                        <Link to='/create-dropzone'><button className="btn_transparent" size="lg">New Dropzone</button></Link>
                        <Link to='/login'><button className="btn_transparent" size="lg">Login</button></Link>
                        <Link to='/reset'><button className="btn_transparent" size="lg">Password Reset</button></Link>
                    </div>
                </div>
            </div>
        );
    }
}