import React from 'react';
import ReactDOM from 'react-dom';
// import Congrats from './congrats';
import Clock from './clock';
import Tabs from './tabs';

const panes = [
  { title: 'one', content: 'I am the first' },
  { title: 'two', content: 'Second pane here' },
  { title: 'three', content: 'Third pane here' }
];

function Root() {
  return (
    <div>
      <Clock />
      {/* <Weather /> */}
      <div className='interactive'>
        <Tabs panes={panes} />
        {/* <AutoComplete names={names} /> */}
      </div>
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root/>, document.getElementById('main'));
});
