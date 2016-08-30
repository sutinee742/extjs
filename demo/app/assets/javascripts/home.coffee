# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log 'hello'

Ext.onReady ->
  console.log 'ready'
  Ext.create 'Ext.Panel', {
     renderTo: Ext.getBody()
     title: 'Hello world'
     html: 'First Ext JS Hello World Program'
     }
