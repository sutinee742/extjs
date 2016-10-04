//= require 'opd2/opd2'

Ext.onReady ->

  Ext.create 'Ext.container.Viewport',
    renderTo: Ext.getBody()
    layout:
      type: 'fit'
    border: true
    frame: true

    items: [
      Ext.create 'OPD2.Event'
    ]
