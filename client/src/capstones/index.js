/*/
 * Primary Author: Aidan Edwards
 * Contact: Aidan.S.Edwards@gmail.com
 *
 * If the URL is just capstones/ it redirects to the capstone list page but if there's an ID it views that specific
 *     capstone
/*/

import React from "react";
import ListPage from "./list"
import ViewPage from "./view"
import EditPage from "./edit"
import {withRouter} from "react-router-dom";

class CapstonesIndex extends React.Component {
  render() {
    let path = window.location.hash ? window.location.hash.slice(1) : window.location.pathname;
    if (path.length <= "/capstones/".length) {
      return <ListPage {...this.props}/>
    } else {
      if(path.search("capstones/edit") === -1) {
        return <ViewPage {...this.props}/>
      }else{
        return <EditPage {...this.props}/>
      }
    }
  }
}

export default withRouter(CapstonesIndex);
