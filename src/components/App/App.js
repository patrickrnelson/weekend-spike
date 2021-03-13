import './App.css';
import {HashRouter as Router, Route} from 'react-router-dom';
import LoginPage from '../LoginPage/LoginPage';
import WelcomePage from '../WelcomePage/WelcomePage';

function App() {
  
  return (
  <div className="App">  
  <Router>   
      {/* Login Page */}
      <Route path="/" exact>
        <LoginPage />
      </Route>

      {/* Welcome Page */}
      <Route path="/welcome">
        <WelcomePage />
      </Route>

    </Router>
    </div>
  );
}

export default App;
