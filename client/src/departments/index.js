/*/
 * Primary Author: Aidan Edwards
 * Contact: Aidan.S.Edwards@gmail.com
 *
 * If the URL is just departments/ it redirects to the department list page but if there's an ID it views that specific
 *     department
/*/

import React from "react";
import ListPage from "./list"
import ViewPage from "./view"
import {withRouter} from "react-router-dom";

class DepartmentsIndex extends React.Component {
  render() {
    let path = window.location.hash ? window.location.hash.slice(1) : window.location.pathname;
    if (path.length <= "/departments/".length) {
      return <ListPage {...this.props}/>
    } else {
      return <ViewPage {...this.props}/>
    }
  }
}

export default withRouter(DepartmentsIndex);
