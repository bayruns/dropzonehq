import React from 'react';
import './LoftList.css';


export default class LoftList extends React.Component {

    render() {

        return (
            <div>
                <div>{this.props.headerText}</div>
                <div  className="loft_list">
                    <div>
                        {this.props.children}
                    </div>
                </div>
                <div>
                    {this.props.footerContent}
                </div>
            </div>
        );
    }
}