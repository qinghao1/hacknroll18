import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import RaisedButton from 'material-ui/RaisedButton';
import axios from 'axios';

class App extends Component {

    handleClick = () => {
        console.log("wtf");
        axios.post('localhost:3000');
        alert("asd");
    }
    
    render() {
        return (
            <MuiThemeProvider>
              <div className="App">
                <RaisedButton onClick={this.handleClick} color="primary">
                  your mother
                </RaisedButton>
              </div>
            </MuiThemeProvider>
        );
    }
}

export default App;
