import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';

// Endpoint!
const API = "http://localhost:3000/sushis"

class App extends Component {

  state = {
    sushis: [],
    ate: [], // an array of id's of eaten sushis
    money: 50
  }

  componentDidMount() {
    fetch(API)
    .then(resp => resp.json())
    .then(sushis => this.setState({ sushis }))
  }

  handleConsumption = (price, id) => {
    if(this.state.ate.includes(id)) return //Exit

    // below handles both already eaten and too little money cases
    // if(this.state.ate.includes(id) || this.state.money < price) return 

    if(this.state.money >= price) {
      let newAte = [...this.state.ate]
      newAte.push(id)

      // if functional setState feels like a lot ==> you don't need to learn it right now 
      this.setState(prevState => {
        return {ate: [...prevState.ate, id], money: prevState.money - price}
      }) 
      // this.setState({ ate: newAte, money: this.state.money - price  })
    } else {
      alert("NOPE. Come back with more money")
    }
  }

  render() {
    return (
      <div className="app">
        <SushiContainer sushis={this.state.sushis} consume={this.handleConsumption} ate={this.state.ate}/>
        <Table ate={this.state.ate} money={this.state.money}/>
      </div>
    );
  }
}

export default App;