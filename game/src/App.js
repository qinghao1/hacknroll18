import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import {axios} from 'axios';

export default class App extends Component{


  render() {
    return (
      <div className="App">
      <header className="App-header">
      <h1 className="App-title" ><center>Face Off</center></h1>
      </header>
      <p className="App-intro"><center>
      bb don cri, is only gaem
      </center></p>
      <p><button type="button" onClick={
    axios.post('/user/12345', {
        firstName: 'Fred',
        lastName: 'Flintstone'
      }
      }><center>Create</center></button> </p>
      <p><button type="button"><center>Join</center></button> </p>
      </div>
    )}
}
