React = require 'react'

Main = React.createClass do
   render: ->
      ``(
         <div className='main-container'>
         { this.props.children }
         </div>
      )``

module.exports = Main
