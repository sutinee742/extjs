# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log 'main'

Ext.onReady ->
  Ext.create 'Ext.form.Panel',
     renderTo: Ext.getBody()
     title: 'Main'
     layout: 'vbox'
     items: [
        xtype: 'button'
        text: 'Logout'
        handler: (btn)->
          content = document.getElementsByTagName('meta')[0]['content']
          key = document.getElementsByTagName('meta')[1]['content']

          params =
            username: ''
            password: ''

          params[content] = key
          console.log params
          Ext.Ajax.request {
            url: 'logout'
            method: 'POST'
            params: params

            success: (response, opts) ->
              obj = Ext.decode response.responseText
              console.log obj
              if obj.success
                Ext.MessageBox.alert('Log out','Bye... ')
                # console.log this
                # this.getView().destroy()
                document.location.assign '/'
              else
                Ext.MessageBox.alert('Log out','invalid')

            failure: (response, opts) ->
              console.log 'server side errors'

          }


     ]
