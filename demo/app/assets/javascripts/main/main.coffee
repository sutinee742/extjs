//= require 'main/ui'

Ext.define 'Main.Event',
  extend: 'Main.UI'
  bind: ->
    search_form = @down 'form'
    btnsearch = @down 'button[name=search]'
    btnlogout = @down 'button[name=logout]'
    btntimestamp = @down 'button[name=timestamp]'
    btnreport = @down 'button[name=report]'
    startdate = @down 'datefield[name=startdate]'
    enddate = @down 'datefield[name=enddate]'

    today = new Date().toISOString().slice(0, 10)
    console.log today

    grid = @down 'grid'
    grid.getStore().load({
      params: {startdate: today, enddate: today}
    })

    btnsearch.on 'click', ->
      console.log 'search'
      console.log search_form.getValues()

      grid.getStore().load({
        params: {startdate: startdate.getValue(), enddate: enddate.getValue()}
      })


    btnreport.on 'click', ->
      console.log 'report jaa'
      griddata = grid.getStore().getRange()
      arr = []
      i = 0
      while i < griddata.length
        dates = griddata[i].data.date.split 'T'
        date = dates[0]

        name = griddata[i].data.name

        timeins = griddata[i].data.timein.split 'T'
        timeinl = timeins[1].split '.'
        timein = timeinl[0]

        timeout = ''

        if griddata[i].data.timeout
          timeouts = griddata[i].data.timeout.split 'T'
          timeoutl = timeouts[1].split '.'
          timeout = timeoutl[0]

        obj = {
          date: date
          name: name
          timein: timein
          timeout: timeout
        }
        arr.push obj
        i++
      jsondt = arr

      columns = [
        {title: "Date", dataKey: "date"}
        {title: "Name", dataKey: "name"}
        {title: "Time-in", dataKey: "timein"}
        {title: "Time-out", dataKey: "timeout"}
      ]

      rows = [
        {"date": "2016-10-16", "name": "monmon", "timein": "07.00", "timeout": "17.00"}
        {"date": "2016-10-18", "name": "nan", "timein": "07.00", "timeout": "17.00"}
      ]

      doc = new jsPDF('p','pt')
      doc.autoTable columns, jsondt, {
        theme: 'grid'
        styles:
          fillColor: [255, 255, 255]
          textColor: [0, 0, 0]
        headerStyles:
          fillColor: 151
          textColor: 255
        margin:
          top: 120
        beforePageContent: (data) ->
          doc.setFontSize(32)
          doc.text "Report worktime", 55, 50
          doc.setFontSize(15)
          doc.text "Date from #{startdate.getValue().getFullYear()}-#{startdate.getValue().getMonth()}-#{startdate.getValue().getDate()} to #{enddate.getValue().getFullYear()}-#{enddate.getValue().getMonth()}-#{enddate.getValue().getDate()} ", 300, 85

      }
      doc.save "worktime_report_#{startdate.getValue().getFullYear()}-#{startdate.getValue().getMonth()}-#{startdate.getValue().getDate()}_#{enddate.getValue().getFullYear()}-#{enddate.getValue().getMonth()}-#{enddate.getValue().getDate()}.pdf"


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
