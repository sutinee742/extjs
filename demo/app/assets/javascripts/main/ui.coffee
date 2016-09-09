Ext.define 'Main.UI',
  extend: 'Ext.Panel'
  layout:
    type: 'vbox'
    align: 'stretch'
  listeners:
    render: ->
      @bind()
  bind: ->
    console.log 'abc'
  initComponent: ->
    today = new Date()

    #button
    btnsearch = Ext.create 'Ext.Button',
      text: 'Search'
      name: 'search'

    startdate = Ext.create 'Ext.form.field.Date',
      fieldLabel: 'Select from'
      name: 'startdate'
      value: today

    enddate = Ext.create 'Ext.form.field.Date',
      fieldLabel: 'to'
      name: 'enddate'
      value: today

    btnlogout = Ext.create 'Ext.Button',
      name: 'logout'
      text: 'Logout'

    #grid
    timestampdata = [
      {date: '2016-09-08', name: 'Sutinee', timein: '09:00', timeout: '17:00'}
      {date: '2016-09-08', name: 'MonMon', timein: '09:00', timeout: '17:00'}
    ]


    gridstore = Ext.create 'Ext.data.Store',
      model: 'TimeStampModel'
      proxy:
        type: 'ajax'
        url: 'worktime'
        reader:
          type: 'json'
          rootProperty: 'worktimes'
      # autoLoad: true
      # data: timestampdata

    mygrid = Ext.create 'Ext.grid.Panel',
      store: gridstore
      stripeRows: true
      title: 'Work Time'
      flex: 1
      width: 500
      collapsible: true
      enableColumnMove  :true
      enableColumnResize:true
      columns: [
          header: 'Date'
          dataIndex: 'date'
          id: 'date'
          flex: 1
          sortable: true
          hidetable: true
        ,
          header: 'Name'
          dataIndex: 'name'
          flex: .5
          sortable: true
          hidetable: false
        ,
          header: 'Time-In'
          dataIndex: 'timein'
          flex: .5
          sortable: true
        ,
          header: 'Time-Out'
          dataIndex: 'timeout'
          flex: .5
          sortable: true
      ]

    # employees = Ext.create 'Ext.data.Store',
    #   fields: ['name']
    #   data: [
    #     {"name":"Sutinee"}
    #     {"name":"MonMon"}
    #   ]




    btntimestamp = Ext.create 'Ext.Button',
      text: 'Timestamp'
      name: 'timestamp'
      # listeners:
      #   click: () ->
      #     win.show()

    #sub panel
    panelheader = Ext.create 'Ext.Panel',
      height: 100
      padding: 5
      bodyPadding: '5 5 5 5'
      html: '<h1>Hello, '+USER+'!</h1>'


    panel1 = Ext.create 'Ext.Panel',
      height: 100
      margin: 5
      padding: 5
      bodyPadding: '5 5 5 5'
      items: [startdate, enddate, btnsearch, btntimestamp, btnlogout]

    # panel2 = Ext.create 'Ext.Panel',
    #     items: [mygrid]
    @items = [
      panelheader,
      panel1,
      mygrid
    ]


    @callParent()
