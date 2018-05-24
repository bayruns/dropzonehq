import React from 'react';

export default class SaveItemDetailsBtn extends React.Component {
    
    constructor(props) {
        super(props);
    }



    render() {
        return (
            <div>
                <button onClick={this.props.onClick}
                    size="lg"
                    color="primary"
                    disabled={this.props.disabled}>{this.props.buttonText}
                </button>
            </div>
        );
    }
}