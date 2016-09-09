//= require 'main/main'
console.log 'main'

# dataModel
Ext.define 'TimeStampModel',
  extend: 'Ext.data.Model'
  fields: [
    {name: 'date', mapping: 'date'}
    {name: 'name', mapping: 'name'}
    {name: 'timein', mapping: 'timein'}
    {name: 'timeout', mapping: 'timeout'}
  ]

Ext.onReady ->
  console.log 'ready'
  #main panel
  Ext.create 'Ext.container.Viewport',
    renderTo: Ext.getBody()
    layout:
      type: 'fit'
    border: true
    frame: true
    items: [
      Ext.create 'Main.Event'
    ]
