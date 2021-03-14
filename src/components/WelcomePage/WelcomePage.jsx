import React, { useEffect, useState } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import IconButton from '@material-ui/core/IconButton';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import MenuIcon from '@material-ui/icons/Menu';
import Drawer from '@material-ui/core/Drawer';
import TextField from '@material-ui/core/TextField';
import Autocomplete from '@material-ui/lab/Autocomplete';

const useStyles = makeStyles({
  list: {
    width: "225px",
  }
});

function WelcomePage() {
  const classes = useStyles();
  const [drawer, setDrawer] = useState(false);

  const breweries = [ 
    {name: 'Pryes'},
    {name: 'Indeed'},
    {name: 'Modist'},
    {name: 'Fulton'},
    {name: 'Castle Danger'},
    {name: 'Inbound'},
    {name: 'Dangerous Man'},
    {name: 'Falling Knife'},
    {name: 'Able'},
    {name: 'Bauhaus'},
  ];

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
    <Box mt={3} mb={3}>
      <p>Welcome!</p>
    </Box>
    <Autocomplete
      id="combo-box-demo"
      options={breweries}
      getOptionLabel={(option) => option.name}
      style={{ width: 300 }}
      renderInput={(params) => <TextField {...params} label="Brewery" variant="outlined" />}
    />
    </>
  )
}

export default WelcomePage;