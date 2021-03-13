import React from 'react';
import Paper from '@material-ui/core/Paper';
import Grid from '@material-ui/core/Grid';
import TextField from '@material-ui/core/TextField';
import Button from '@material-ui/core/Button';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1,
  },
  textInputs: {
    paddingTop: theme.spacing(2),
    paddingBottom: theme.spacing(2),
    color: theme.palette.text.secondary,
  },
  parentContainer: {
    marginTop: '120px',
    justifyContent: 'center'
  },
  title: {
    marginTop: '60px',
    marginBottom: '30px'
  },

  text: {
    margin: '0'
  },

  img: {
    display: 'block',
    marginLeft: 'auto',
    marginRight: 'auto'
  },

}));

const handleLogin = () => {
  console.log('handleLogin');
}

function WelcomePage() {
  const classes = useStyles();
  
  return (

    <>
    <Grid container spacing={3} className={classes.parentContainer}>

      <Grid item xs={9}>
        <img 
          className={classes.img}
          src="https://images.creativemarket.com/0.1.0/ps/2889213/600/400/m1/fpnw/wm0/zdqaf6hi0uarrkccaer5wiyxufqblvcuc6lmh8sahffmftdybuzexhckyrvtuts8-.jpg?1498334639&s=29d6a93972e8d8e8cc3f2175c01f42c0" 
          height="110px"
          />
      </Grid>

      <Grid item xs={9} className={classes.title}>
        <h3 className={classes.text}>Sign In</h3>
      </Grid>
    </Grid>
      
    <Grid 
      container spacing={1} 
      direction="row" 
      justify="center"
      alignItems="center"
      className={classes.inputContainer}>
      <Grid item xs={10}>
        <p className={classes.text}>Email Address</p>
        <TextField fullWidth variant="outlined" className={classes.textInputs}></TextField>
      </Grid>

      <Grid item xs={10}>
        <p className={classes.text}>Password</p>
        <TextField fullWidth variant="outlined" className={classes.textInputs}></TextField>
      </Grid>

      <Grid item xs={3}>
        <Button onClick={handleLogin}>Submit</Button>
      </Grid>
    </Grid>
  </>
  )
}

export default WelcomePage;