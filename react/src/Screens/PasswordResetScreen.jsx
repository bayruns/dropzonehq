import React from 'react';

import { Link } from 'react-router-dom';
import Binder from '../Binder.js';

export default class PasswordResetScreen extends React.Component {

    constructor(props) {
        super(props);

        //creater a new binder and bind all of the methods in this class
        var binder = new Binder();
        binder.bindAll(this, PasswordResetScreen);

        this.state = {
            email: "",
            warning: ""
        }
    }

    updateEmail(e) {
        this.setState({
            email: e.target.value
        });
    }

    submit() {
        var warning;
        if (this.state.email === "") {
            warning = <div color="danger">Please enter a valid email.</div>;
        } else {
            warning = ""
        }
        this.setState({
            warning: warning
        })
    }

    render() {
        return (
            <div id="main_body">
                <div>
                    <div className="mainscreen_col" xs={{ size: 12 }}>
                        <img src="http://svgshare.com/i/3vT.svg" className="behind_nav img-responsive img-circle center-block" height="100" width="100" alt="computer with parachute logo"></img>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12, offset: 0 }} sm={{ size: 10, offset: 1 }} md={{ size: 8, offset: 2 }} lg={{ size: 6, offset: 3 }}>
                        <div>
                            <divAddon>Dropzone Email: </divAddon>
                            <div type='email' />
                        </div>
                        <button className="btn_transparent" size="lg" onClick={this.submit} >Send Reset Email</button>
                        <Link to='/main-menu'><button className="btn_transparent" size="lg">Back to Main</button></Link>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12, offset: 0 }} sm={{ size: 10, offset: 1 }} md={{ size: 8, offset: 2 }} lg={{ size: 6, offset: 3 }}>
                        {this.state.warning}
                    </div>
                </div>
            </div>
        );
    }
}