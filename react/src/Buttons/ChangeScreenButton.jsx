import React from 'react';

/*
*   ScreenChangeButton is a button that changes the currently rendered screen in MainView, 
*/
export default class ScreenChangeButton extends React.Component {

    render() {
        return(
            <div>
                <button onClick={() => this.props.changeScreen(this.props.screen)}
                size="lg" color="primary">{this.props.buttonText}</button>
            </div>
        );
    }    
}

