import React from 'react';
import { Link } from 'react-router-dom';
import Binder from '../Binder.js';

export default class LoginScreen extends React.Component {

    constructor(props) {
        super(props);
        //creater a new binder and bind all of the methods in this class
        var binder = new Binder();
        binder.bindAll(this, LoginScreen);

        this.updateEmail = this.updateEmail.bind(this);
        this.updatePassword = this.updatePassword.bind(this);
        this.submit = this.submit.bind(this);

        this.state = {
            email: "",
            password: "",
            warning: ""
        }
    }

    updateEmail(e) {
        this.setState({
            email: e.target.value
        });
    }

    updatePassword(e) {
        this.setState({
            password: e.target.value
        })
    }

    submit() {
        var warning;
        if (this.state.password === "") {
            warning = <div color="danger">Please enter a password.</div>;
        } else if (this.state.email === "") {
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
                        <img src="http://svgshare.com/i/3vT.svg" class="behind_nav img-responsive img-circle center-block" height="100" width="100" alt="computer with parachute logo"></img>
                    </div>
                    <div className="mainscreen_col" xs={{ size: 12, offset: 0 }} sm={{ size: 10, offset: 1 }} md={{ size: 8, offset: 2 }} lg={{ size: 6, offset: 3 }}>
                        <h1>Dropzone Login</h1>
                        <div>
                            <divAddon>Dropzone Email: </divAddon>
                            <div type='email' onChange={this.updateEmail} />
                        </div>
                        <div>
                            <divAddon>Dropzone Password: </divAddon>
                            <div type='password' onChange={this.updatePassword} />
                        </div>
                        <button className="btn_transparent" size="lg" onClick={this.submit}>Login</button>
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