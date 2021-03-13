import React, { useEffect, useState } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import IconButton from '@material-ui/core/IconButton';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import MenuIcon from '@material-ui/icons/Menu';
import Drawer from '@material-ui/core/Drawer';

const useStyles = makeStyles({
  list: {
    width: "225px",
  }
});

function WelcomePage() {
  const classes = useStyles();
  const [drawer, setDrawer] = useState(false);

  const toggleDrawer = () => {
    setDrawer(!drawer);
  };

  const list = (
    <div
      className={classes.list}
      onClick={toggleDrawer}
      onKeyDown={toggleDrawer}
      role="presentation">
        
        <List>
          <ListItem>Recommendations</ListItem>
          <ListItem>My Beers</ListItem>
          <ListItem>Want to Try</ListItem>
        </List>
    </div>
  )

  return (
    <>
    <IconButton onClick={toggleDrawer}>
      <MenuIcon fontSize="large"/>
    </IconButton>
    <Drawer anchor="left" open={drawer} onClose={toggleDrawer}>
      {list}
    </Drawer>
    <Box mt={3}>
      <p>Welcome!</p>
    </Box>
    </>
  )
}

export default WelcomePage;