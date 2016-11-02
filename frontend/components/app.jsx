import React from 'react';

// Mui Things
import AppBar from 'material-ui/AppBar';
import IconMenu from 'material-ui/IconMenu';
import MenuItem from 'material-ui/MenuItem';
import FlatButton from 'material-ui/FlatButton';
import MoreVertIcon from 'material-ui/svg-icons/navigation/more-vert';

// const loggedDropdown = (props) => (
//   <IconMenu
//     {...props}
//     iconButtonElement={
//       <IconButton><MoreVertIcon /></IconButton>
//     }
//     targetOrigin={{horizontal: 'right', vertical: 'top'}}
//     anchorOrigin={{horizontal: 'right', vertical: 'top'}}
//   >
//     <MenuItem primaryText="Profile" />
//     <MenuItem primaryText="Help" />
//     <MenuItem primaryText="Sign out" />
//   </IconMenu>
// );
//
// loggedDropdown.muiName = 'IconMenu';

const App = ({ children }) => (
  <div>
    <AppBar
      title="easyHire"
      style={{backgroundColor: '#86B73B', marginTop: 0}}
      showMenuIconButton={false}
      iconElementRight={<FlatButton label="Login" style={{ color: '#eeeeee' }} />}
    />

    {children}
  </div>
);

export default App;
