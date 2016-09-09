//= require 'main/ui'

Ext.define 'Main.Event',
  extend: 'Main.UI'
  bind: ->
    btnsearch = @down 'button[name=search]'
    btnlogout = @down 'button[name=logout]'
    btntimestamp = @down 'button[name=timestamp]'
    startdate = @down 'datefield[name=startdate]'
    enddate = @down 'datefield[name=enddate]'

    today = new Date().toISOString().slice(0, 10)
    console.log today

    grid = @down 'grid'
    grid.getStore().load({
      params: {startdate: today, enddate: today}
    })


    btnsearch.on 'click', ->
      grid.getStore().load({
        params: {startdate: startdate.getValue(), enddate: enddate.getValue()}
      })


    btnlogout.on 'click', ->
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
            document.location.assign '/'
          else
            Ext.MessageBox.alert('Log out','invalid')
        failure: (response, opts) ->
          console.log 'server side errors'
      }

    btntimestamp.on 'click', ->
      #window
      win = Ext.create 'Ext.window.Window',
        title: 'Time-in form'
        layout: 'form'
        width: 300
        closeAction: 'destroy'
        plain: true
        items: [
            xtype: 'datefield'
            fieldLabel: 'Date'
            name: 'date'
            value: new  Date()
          ,
            xtype: 'textfield'
            fieldLabel: 'Name'
            name: 'name'
            value: USER
            readOnly: true
          ,
            xtype: 'textfield'
            fieldLabel: 'Time'
            name: 'time'
            value: new Date().toLocaleTimeString()
            readOnly: true

        ],
        buttons: [
            text: 'Time-in'
            name: 'timein'
            listeners:
              click: () ->
                content = document.getElementsByTagName('meta')[0]['content']
                key = document.getElementsByTagName('meta')[1]['content']
                date = win.down 'datefield[name=date]'
                name = win.down 'textfield[name=name]'
                time = win.down 'textfield[name=time]'
                console.log date.getValue()
                console.log name.getValue()
                console.log time.getValue()
                params =
                  date: date.getValue()
                  employee_name: name.getValue()
                  time: time.getValue()
                params[content] = key
                console.log params

                Ext.Ajax.request {
                  url: 'timein'
                  method: 'POST'
                  params: params

                  success: (response, opts) ->
                    obj = Ext.decode response.responseText
                    if obj.success
                        grid.getStore().load({
                          params: {startdate: today, enddate: today}
                        })
                    else
                      Ext.MessageBox.alert('Fail','invalid')
                }

                win.close()
          ,
            text: 'Time-out'
            name: 'timeout'
            listeners:
              click: () ->
                content = document.getElementsByTagName('meta')[0]['content']
                key = document.getElementsByTagName('meta')[1]['content']
                date = win.down 'datefield[name=date]'
                name = win.down 'textfield[name=name]'
                time = win.down 'textfield[name=time]'
                console.log date.getValue()
                console.log name.getValue()
                console.log time.getValue()
                params =
                  date: date.getValue()
                  employee_name: name.getValue()
                  time: time.getValue()
                params[content] = key
                console.log params

                Ext.Ajax.request {
                  url: 'timeout'
                  method: 'POST'
                  params: params

                  success: (response, opts) ->
                    obj = Ext.decode response.responseText
                    if obj.success
                      grid.getStore().load({
                        params: {startdate: today, enddate: today}
                      })
                    else
                      Ext.MessageBox.alert('Fail','invalid')
                }

                win.close()
          ,
            text: 'Cancel'
            name: 'cancel'
            listeners:
              click: () -> win.close()
        ],
        buttonAlign: 'center'
      win.show()
