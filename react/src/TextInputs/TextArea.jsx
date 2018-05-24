import React from 'react';
import PropTypes from 'prop-types';


/*
 
*/
export default class TextArea extends React.Component {
  constructor(props) {
    super(props);
    this.handleChange= this.handleChange.bind(this);
  }

  handleChange(event) {
    var text = event.target.value;
    this.props.onChange(this.props.id, text);
  }

  render() {
    return (
      <div>
      <label for={this.props.id}>{this.props.labelText}</label>
      <div type="textarea" name="textarea" value={this.props.value} id={this.props.id} onChange={this.handleChange} />
    </div>
    );
  }
}

TextArea.propTypes = {
  id: PropTypes.string.isRequired, //the id to identify this textarea (For label)
  labelText: PropTypes.string.isRequired, //the text for the label
}