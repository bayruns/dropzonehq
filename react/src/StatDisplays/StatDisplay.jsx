import React from 'react';


export default class StatDisplay extends React.Component {
    constructor(props) {
        super(props);
        this.state = {            
            headerText: this.props.headerText,
            statsToDisplay: this.props.statsToDisplay
        }
    }

    render() {
        return (
            <div>
                <div>
                    <div>
                        <div >
                            <div>{this.state.headerText}</div>
                            <div>
                                {this.state.statsToDisplay}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}