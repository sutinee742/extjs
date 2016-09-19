//= require 'account_management/account_management'

console.log '---account management---'


#main panel
Ext.onReady ->

  Ext.create 'Ext.container.Viewport',
    renderTo: Ext.getBody()
    layout:
      type: 'fit'
    border: true
    frame: true
    
    items: [
      Ext.create 'AccountManagement.Event'
    ]
