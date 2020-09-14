import React from 'react';

class Header extends React.Component {
    render() {
        const selected = this.props.selectedPane;
        const headers = this.props.panes.map((pane, index) => {
            const title = pane.title;
            const klass = index === selected ? 'actice' : '';

        return (
            <li 
            key={index}
            className={klass}
            onClick={() => this.props.onTabchosen(index)}>
                {title}{' '}
            </li>
        );
        });
        return (
            <ul className='tab-header'>
                {headers}
            </ul>
        );
    }
}


export default class Tabs extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            selectedPane: 0
        };
        this.selectTab = this.selectTab.bind(this);
    }

    selectTab(num){
        this.setState({selectedPane: num});
    }

    render() {
        const pane = this.props.panes[this.state.selectedPane];

        return (
            <div>
                <h1>Tabs</h1>
                <div className="tabs">
                <Header
                    selectedPane={this.state.selectedPane}
                    onTabchosen={this.selectTab}
                    panes={this.props.panes}>
                </Header>
                <div className="tab-content">
                    <article>
                        {pane.content}
                    </article>
                </div>
                </div>
            </div>
        );
    }
}