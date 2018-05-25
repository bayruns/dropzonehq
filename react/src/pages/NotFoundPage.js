import React from 'react';
import { Link  } from 'react-router-dom'

export default class NotFoundScreen extends React.Component {

    render() {
        return (
            <div id="main_body">
                <div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <h1>404 Page Not Found</h1>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <img src="http://svgshare.com/i/3vT.svg" class="behind_nav img-responsive img-circle center-block" height="225" width="225" alt="computer with parachute logo"></img>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <h3 class="title_color">The page you requested was not found.</h3>
                    </div>
                </div>
                <div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <Link to='/main-menu'><button className="btn_transparent" size="lg">Back to main menu</button></Link>
                    </div>
                </div>
            </div>
        );
    }
}