class HelloWorld extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cnt: 0,
    }
    this.click = this.click.bind(this);
  }

  click(){
    console.log('Нажал');
    this.setState({cnt: this.state.cnt + 1});
  }

  render () {
    return (
        <span onClick={this.click}>Greeting: {this.props.greeting} {this.state.cnt}</span>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};

