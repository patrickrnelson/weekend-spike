import React, { useEffect, useState } from 'react';
import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import MenuIcon from '@material-ui/icons/Menu';
import Drawer from '@material-ui/core/Drawer';

function WelcomePage() {
  const [drawer, setDrawer] = useState(false);

  const toggleDrawer = () => (event) => {
    if (event.type === 'keydown' && (event.key === 'Tab' || event.key === 'Shift')) {
      return;
    }

    setDrawer(true);
  };

  const list = () => {
    <div
      onClick={toggleDrawer(false)}
      onKeyDown={toggleDrawer(false)}>
      <ol>
        <li>Recommendations</li>
        <li>My Beers</li>
        <li>Want to Try</li>
      </ol>
    </div>
  }

  return (
    <>
    <Button onClick={toggleDrawer(true)}>
      <MenuIcon fontSize="large"/>
    </Button>
    <Drawer anchor="left" open={drawer} onClose={toggleDrawer(false)}>
      {list}
    </Drawer>
    <Box mt={3}>
      <p>Welcome!</p>
    </Box>
    </>
  )
}

export default WelcomePage;