Ext.define 'OPD2.UI',
  extend: 'Ext.form.Panel'
  layout:
    type: 'vbox'
    align: 'stretch'
  title: 'Checking By OPD2'
  titleAlign: 'left'
  listeners:
    render: ->
      @bind()
  bind: ->
    console.log 'this is UI.'
  initComponent: ->

    #add panel to main
    @items = [
        xtype: 'fieldset'
        title: 'Criteria'
        layout:
          type: 'table'
          columns: 2
        padding: '5 5 5 5'
        width: 500
        defaults:
          labelAlign: 'right'
          labelWidth: 300

        items: [
            xtype: 'combobox'
            fieldLabel: 'Branch'
            name: 'branch'
            emptyText: '-- ทั้งหมด --'
            displayField: ''
            valueField: ''
          ,
            xtype: 'combobox'
            fieldLabel: 'Market Type'
            name: 'market_type'
            emptyText: '-- ทั้งหมด --'
            displayField: ''
            valueField: ''
          ,
            xtype: 'combobox'
            fieldLabel: 'Deposit/Withdraw Type'
            name: 'deposit_or_withdraw_type'
            emptyText: '-- ทั้งหมด --'
            displayField: ''
            valueField: ''
          ,
            xtype: 'button'
            text: 'ค้นหาตาม Criteria'
            name: 'btn_criteria'
            margin: '0 0 0 350'
        ]
      ,
        xtype: 'grid'
        stripeRows: true
        flex: 1


        columns: [
            header: 'No.'
            dataIndex: 'no'
            id: 'no'
            flex: 1
            sortable: true
            hidetable: true
          ,
            header: 'Transaction No.'
            dataIndex: 'transaction_no'
            id: 'transaction_no'
            flex: .5
            sortable: true
          ,
            header: 'Last Review Date'
            dataIndex: 'last_review_date'
            id: 'last_review_date'
            flex: .5
            sortable: true
          ,
            header: 'Account No.'
            dataIndex: 'account_no'
            id: 'account_no'
            flex: .5
            sortable: true
          ,
            header: 'Account Name'
            dataIndex: 'account_name'
            id: 'account_name'
            flex: .5
            sortable: true
          ,
            header: 'Request Amount'
            dataIndex: 'request_amount'
            id: 'request_amount'
            flex: .5
            sortable: true
        ]

        bbar: Ext.create 'Ext.PagingToolbar',
          displayInfo: true
          displayMsg: 'Displaying {0} - {1} of {2}'
          emptyMsg: 'No topics to display'

    ]

    @callParent()
