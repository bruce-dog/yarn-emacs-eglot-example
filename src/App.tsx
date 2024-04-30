import React from "react";
import logo from "./logo.svg";
import "./App.css";
import isPositive from "is-positive"; // sample JS dependency
import invariant from "tiny-invariant"; // sample TS dependency

function App() {
  // Use the line below to test xref-find-definitions and other LSP features.
  invariant(isPositive(1), "This should not throw.");

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
