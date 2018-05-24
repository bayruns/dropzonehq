import React from 'react';
import { rootURL } from '../restInfo.js';
import UncontrolledTextInput from '../UnControlledTextInput.jsx';
import InventoryDisplayItem from './InventoryDisplayItem.jsx';
import Binder from '../Binder.js';

export default class InventoryDisplayContainer extends React.Component {

    constructor(props) {
        super(props);

        //create a new binder and bind all of the methods in this class
        var binder = new Binder();
        binder.bindAll(this, InventoryDisplayContainer);

        this.state = {
            containerInfo: this.props.containerInfo
        };
    }

    componentWillReceiveProps(newProps)
    {
        console.log("in componentWillReceiveProps (InvDisplayContainer)");
        // force update state 
        this.setState({
            containerInfo: newProps.containerInfo
        })
    }

    container_snChanged(e) 
    {
        console.log("in container_snChanged: ");
/*         var containerInfo = {
            container_sn: e.target.value
        }
        this.setState({
            containerInfo: containerInfo
        }); */

        var newContainerInfo = this.state.containerInfo;
        newContainerInfo.container_sn = e.target.value;
        this.setState({
            containerInfo: newContainerInfo
        });
    }

    updateContainerRow(itemInfo) {
        console.log("updateContainerRow: " + JSON.stringify(itemInfo));
        var containerInfo = this.state.containerInfo;
        this.props.updateContainerRow(itemInfo, containerInfo);

        console.log("CONTAINER STATE AFTER: " + JSON.stringify(this.state.containerInfo));
    }

    render() {
        return (
            <div>
                <div>{"Container " + this.props.itemInfo.item_id + " Details"}</div>
                <div>
                    <div>
                        <div>
                            <divAddon >Container Serial: </divAddon>
                            {/* <UncontrolledTextInput
                                onBlur={this.container_snChanged}
                                id="containerSerialID"
                                defaultText={this.props.containerInfo.container_sn}
                            /> */}
                            <input type="text" value={this.state.containerInfo.container_sn} onChange={this.container_snChanged}  />
                        </div>
                    </div>
                    <InventoryDisplayItem
                        updateItemInfo={this.updateContainerRow}
                        defaultItemInfo={this.props.itemInfo}
                    />
                </div>
            </div>
        );
    }
};