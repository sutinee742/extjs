Ext.define 'AccountManagement.UI',
  extend: 'Ext.form.Panel'
  layout:
    type: 'vbox'
    align: 'stretch'
  title: 'Account Management'
  titleAlign: 'center'
  listeners:
    render: ->
      @bind()
  bind: ->
    console.log 'this is UI.'
  initComponent: ->

    #search panel
    txtf_client_code = Ext.create 'Ext.form.field.Text',
      fieldLabel: '<b>Client Code</b>'
      name: 'client_code'
      labelAlign: 'right'

    txtf_client_name = Ext.create 'Ext.form.field.Text',
      fieldLabel: '<b>Client Name</b>'
      name: 'client_name'
      labelAlign: 'right'

    cb_ae = Ext.create 'Ext.form.field.ComboBox',
      fieldLabel: '<b>Ae</b>'
      emptyText: 'Select Ae'
      labelAlign: 'right'
      displayField: 'name'
      valueField: 'abbr'

    cb_status = Ext.create 'Ext.form.field.ComboBox',
      fieldLabel: '<b>Status</b>'
      emptyText: 'Select Status'
      labelAlign: 'right'
      displayField: 'name'
      valueField: 'abbr'

    btn_search = Ext.create 'Ext.Button',
      name: 'search'
      text: '<b>Search</b>'
      margin: '0 0 0 15'
      labelAlign: 'right'

    tb_btn = Ext.create 'Ext.toolbar.Toolbar',
      items: [
          text: 'New Account'
          name: 'btn_new_acc'
        ,
          text: 'New Copy Account'
          name: 'btn_copy_acc'
        ,
          text: 'Update Account'
          name: 'btn_up_acc'
        ,
          text: 'Reactive Account'
          name: 'btn_react_acc'
        ,
          text: 'Close Account'
          name: 'btn_close_acc'
      ]



    grid = Ext.create 'Ext.grid.Panel',

      stripeRows: true
      flex: 1
      width: 500

      columns: [
          header: 'Status'
          dataIndex: 'status'
          id: 'status'
          flex: 1
          sortable: true
          hidetable: true
        ,
          header: 'Client Account Code'
          dataIndex: 'client_account_code'
          id: 'client_account_code'
          flex: .5
          sortable: true
          hidetable: false
        ,
          header: 'Name ENG'
          dataIndex: 'name_eng'
          id: 'name_eng'
          flex: .5
          sortable: true
        ,
          header: 'Name Local'
          dataIndex: 'name_local'
          id: 'name_local'
          flex: .5
          sortable: true
        ,
          header: 'Account Type'
          dataIndex: 'account_type'
          id: 'account_type'
          flex: .5
          sortable: true
        ,
          header: 'Marketing Name'
          dataIndex: 'marketing_name'
          id: 'marketing_name'
          flex: .5
          sortable: true
        ,
          header: 'Account Class'
          dataIndex: 'account_class'
          id: 'account_class'
          flex: .5
          sortable: true
        ,
          header: 'Credit Limit'
          dataIndex: 'credit_limit'
          id: 'credit_limit'
          flex: .5
          sortable: true
      ]

      bbar: Ext.create 'Ext.PagingToolbar',
        displayInfo: true
        displayMsg: 'Displaying {0} - {1} of {2}'
        emptyMsg: 'No topics to display'



    #panel
    panelsearch = Ext.create 'Ext.form.Panel',
      bodyPadding: '5 5 5 5'
      name: 'search'
      layout:
        type: 'hbox'
      items: [
        txtf_client_code,
        txtf_client_name,
        cb_ae,
        cb_status,
        btn_search
      ]

    panel_toolbar_grid = Ext.create 'Ext.form.Panel',
      height: 100
      bodyPadding: '5 5 5 5'
      flex: 1
      layout:
        type: 'vbox'
        align: 'stretch'
      items: [
        tb_btn,
        grid
      ]

    #add panel to main
    @items = [
      panelsearch,
      panel_toolbar_grid
    ]

    @callParent()
