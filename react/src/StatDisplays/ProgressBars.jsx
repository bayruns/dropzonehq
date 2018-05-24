import React from 'react';


export default class ProgressBars extends React.Component {

  render() {
    return (
      <div>
        <div>{this.props.headerText}</div>
        <div>
          {this.props.bars}
        </div>
      </div>
    );
  }
};