USER_DATA = do
   name: "Johan Jordaan"
   username: "johanjordaan"
   image: "https://avatars3.githubusercontent.com/u/715580?v=3&u=b0f6a0bfeadafdefca70c7003bec8aeaf8ce579d&s=140"

React = require 'react'
ReactDOM = require 'react-dom'


ProfilePic = React.createClass do
   render: ->
      ``(
         <img src={this.props.imageUrl} style={{height:100,width:100}}/>
      )``

ProfileLink = React.createClass do
   render: ->
      ``(
         <div>
            <a href={'https://www.github.com/' + this.props.username}>
               {this.props.username}
            </a>
         </div>
      )``

ProfileName = React.createClass do
   render: ->
      ``(
         <div>
            {this.props.name}
         </div>
      )``

Avatar = React.createClass do
   render: ->
      ``(
         <div>
            <ProfilePic imageUrl={ this.props.user.image} />
            <ProfileName name={ this.props.user.name} />
            <ProfileLink username={ this.props.user.username} />
         </div>
      )``

ReactDOM.render ``<Avatar user={USER_DATA}/>``, document.getElementById('app')
