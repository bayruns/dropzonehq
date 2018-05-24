import React from 'react';
import MainScreen from './Screens/MainScreen.jsx';
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import EmployeeAdminScreen from './Screens/EmployeeAdminScreen.jsx';
import RentalScreen from './Screens/RentalScreen.jsx';
import SheetsScreen from './Screens/SheetsScreen.jsx';
import EmployeeInfoScreen from './Screens/EmployeeInfoScreen.jsx';
import InventoryScreen from './Screens/InventoryScreen.jsx';
import LoftScreen from './Screens/LoftScreen.jsx';
import LoginScreen from './Screens/LoginScreen.jsx';
import PasswordResetScreen from './Screens/PasswordResetScreen.jsx';
import LandingScreen from './Screens/LandingScreen.jsx';
import NotFoundScreen from './Screens/NotFoundScreen.jsx';

export default class App extends React.Component {

    //Render the Navbar and the screen below it
    render() {
        return (
            <BrowserRouter>
                <Switch>
                    <Route exact path='/' component={MainScreen} />
                    <Route path='/main-menu' component={MainScreen} />
                    <Route path='/dropzone-home' component={LandingScreen} />
                    <Route path='/login' component={LoginScreen} />
                    <Route path='/reset' component={PasswordResetScreen} />
                    <Route path='/employee-info' component={EmployeeInfoScreen} />
                    <Route path='/employee-management' component={EmployeeAdminScreen} />
                    <Route path='/rental-menu' component={RentalScreen} />
                    <Route path='/rig-sheets' component={SheetsScreen} />
                    <Route path='/inventory-menu' component={InventoryScreen} />
                    <Route path='/loft-menu' component={LoftScreen} />
                    <Route path='*' exact={true} component={NotFoundScreen} />
                </Switch>
            </BrowserRouter>
        );
    }
}