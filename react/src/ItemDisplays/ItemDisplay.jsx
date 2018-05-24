import React from 'react';

export default class ItemDisplay extends React.Component {

    render() {
        return (
            <div >
                <div>{this.props.headerText}</div>
                <div>
                    {this.props.statsToDisplay}
                </div>
                <div> {this.props.footerText} </div>
            </div>
        );
    }
}