Ext.define 'Main.UI',
  extend: 'Ext.Panel'
  layout:
    type: 'vbox'
    align: 'stretch'
  bodyStyle:{
    "background-color": "#00194C"
    "color": "#FFFFFF"
  }
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
      margin: 5
      padding: 5
      # flex: 2

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
      # flex: 1
      margin: 5
      padding: 5
      # bodyPadding: '0 0 0 0'

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



    btntimestamp = Ext.create 'Ext.Button',
      text: 'Timestamp'
      name: 'timestamp'
      # flex: 1
      margin: 5
      padding: 5

    btnreport = Ext.create 'Ext.Button',
      text: 'Report'
      name: 'report'
      # flex: 1
      margin: 5
      padding: 5

    #sub panel
    panelheader = Ext.create 'Ext.Panel',
      height: 90
      padding: 15
      bodyPadding: '5 5 5 5'
      border: false
      bodyStyle:{
        "background-color": "#00194C"
        "color": "#FFFFFF"
      }
      html: '<h1>Hello, '+USER+'!</h1>'


    panel = Ext.create 'Ext.form.Panel',
      layout: 'vbox'
      height: 120
      bodyStyle:{
        "background-color": "#EEEEEE"
        # "border-style": "double"
      }
      # margin: 5
      padding: 5
      bodyPadding: '5 5 5 5'
      items: [
        startdate
      ,
        enddate
      ,
        xtype: 'panel'
        layout: 'hbox'
        border: false
        flex: 1
        bodyStyle:{
          "background-color": "#EEEEEE"
        }
        items: [
          btnsearch
        ,
          btntimestamp
        ,
          btnreport
        ,
          btnlogout
        ]

      ]

    # panelbutton = Ext.create 'Ext.Panel',
    #   layout: 'hbox'
    #   height: 100
    #   margin: 5
    #   padding: 5
    #   bodyPadding: '5 5 5 5'
    #   items: [btnsearch, btntimestamp, btnreport, btnlogout]


    @items = [
      panelheader,
      panel,
      mygrid
    ]


    @callParent()
