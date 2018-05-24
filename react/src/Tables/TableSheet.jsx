import React from 'react';
import PropTypes from 'prop-types';


/*
    A TableSheet is a React-Table that is displayed on a card background.
    It can take a header, footer content, columns, (passed via props)
    and rows (passed via this.props.children).
*/
export default class TableSheet extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            selected: null,
        }
    }

    render() {
        return (
            <div>
                <div>{this.props.headerText}</div>
                <div>
                    <div
                        getTrProps={this.props.getTrProps}//For selecting rows
                        data={this.props.children}
                        columns={this.props.columns}
                        defaultPageSize={5}
                        style={{
                            //This will force the table body to overflow 
                            //and scroll, since there is not enough room.
                            height: "400px" 
                        }}
                        //stripe every other row for readability
                        className="-striped -highlight" />
                </div>
                <div>
                {this.props.footer}
                </div>
            </div>
        );
    }
}

TableSheet.propTypes = {
    headerText: PropTypes.any.isRequired,
    columns: PropTypes.array.isRequired,
    footer: PropTypes.any.isRequired
}