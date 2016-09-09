# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log 'home'

Ext.onReady ->
  console.log 'ready'

  Ext.create 'Ext.form.Panel',
     renderTo: Ext.getBody()
     title: 'Login'
     layout: 'vbox'
     items: [
         xtype: 'textfield'
         id: 'username'
         name: 'username'
         fieldLabel: 'Username'
         allowBlank: false
     ,
         xtype: 'textfield'
         id: 'password'
         name: 'password'
         inputType: 'password'
         fieldLabel: 'Password'
         allowBlank: false

     ,
         xtype: 'button'
         text: 'submit'
         handler: (btn)->
           panel = btn.up 'panel'
           user = panel.down '#username'
           pass = panel.down '#password'
           console.log user.getValue()
           console.log pass.getValue()
           content = document.getElementsByTagName('meta')[0]['content']
           key = document.getElementsByTagName('meta')[1]['content']

           params =
             username: user.getValue()
             password: pass.getValue()

           params[content] = key
           console.log params

           Ext.Ajax.request {
             url: 'login'
             method: 'POST'
             params: params

             success: (response, opts) ->
               obj = Ext.decode response.responseText
               console.log obj
               if obj.success
                 Ext.MessageBox.alert('Log in','Hello '+user.getValue())
                 document.location.assign 'main'
               else
                 Ext.MessageBox.alert('Log in','invalid')
                 
             failure: (response, opts) ->
               console.log 'server side errors'

           }
     ]
