Ext.define 'OPD2.Form.UI',
  extend: 'Ext.form.Panel'
  layout:
    type: 'vbox'
    align: 'center'
  alias: 'widget.opd2.opd2_form.ui'
  padding: '5 5 5 5'
  border: 0
  scrollable: true

  listeners:
    render: ->
      @bind()
  bind: ->
    console.log 'this is UI.'
  initComponent: ->

    #add panel to main
    @items = [
        xtype: 'container'
        padding: '5 5 5 5'
        border: 0
        layout:
          type: 'table'
          columns: 2
        defaults:
          labelAlign: 'right'
          labelWidth: 150

        items: [
            xtype: 'textfield'
            name: 'document_no'
            fieldLabel: 'Document No.'
          ,
            xtype: 'textfield'
            name: 'transaction_date'
            fieldLabel: 'Transaction Date'
          ,
            xtype: 'textfield'
            name: 'account_no'
            fieldLabel: 'Account No.'
          ,
            xtype: 'textfield'
            name: 'account_name'
            fieldLabel: 'Account Name'
          ,
            xtype: 'textfield'
            name: 'front_type'
            fieldLabel: 'Front Type'
          ,
            xtype: 'textfield'
            name: 'collateral_type'
            fieldLabel: 'Collateral Type'
          ,
            xtype: 'textfield'
            name: 'bank_account'
            fieldLabel: 'Bank Account'
          ,
            xtype: 'label'
          ,
            xtype: 'textfield'
            name: 'transaction_type'
            fieldLabel: 'Transaction Type'
          ,
            xtype: 'label'
          ,
            xtype: 'textfield'
            name: 'marketing'
            fieldLabel: 'Marketing'
          ,
            xtype: 'textfield'
            name: 'attachment_type'
            fieldLabel: 'Attachment Type'
          ,
            xtype: 'textfield'
            name: 'opd1_approver'
            fieldLabel: 'OPD1 Approver'
          ,
            xtype: 'textfield'
            name: 'finish_amount'
            fieldLabel: 'Finish Amount'
          ,
            xtype: 'textfield'
            name: 'effective_date'
            fieldLabel: 'Effective Date'
          ,
            xtype: 'textfield'
            name: 'user_id'
            fieldLabel: 'เลขประจำตัวประชาชน'
        ]
      ,
        xtype: 'fieldset'
        width: 600
      ,
        xtype: 'container'
        padding: '5 5 5 5'
        layout:
          type: 'table'
          columns: 2
        defaults:
          margin: '5 5 5 5'
        items: [
            xtype: 'fieldset'
            title: 'Reject To Adjust Review ( OPD1 )'
            layout: 'vbox'

            items: [
                xtype: 'fieldcontainer'
                defaultType: 'checkboxfield'
                margin: '0 0 0 110'
                items: [
                    boxLabel: 'Reject'
                    name: 'reject'
                ]
              ,
                xtype: 'combobox'
                fieldLabel: 'Reject Reason'
                name: 'reject_reason'
                emptyText: '-- กรุณาเลือก --'
                displayField: ''
                valueField: ''
              ,
                xtype: 'textareafield'
                name: 'reject_remark'
                scrollable: true
                fieldLabel: 'Reject Remark'
            ]
          ,
            xtype: 'fieldset'
            title: 'Update to Front'
            layout: 'vbox'
            defaults:
              labelAlign: 'right'
              labelWidth: 110
            items: [
                xtype: 'container'
                layout: 'hbox'
                padding: '0 0 5 0'
                items: [
                    xtype: 'textfield'
                    name: 'credit_limit'
                    fieldLabel: 'Credit Limit'
                    labelAlign: 'right'
                    labelWidth: 110
                    padding: '0 5 0 0'
                  ,
                    xtype: 'button'
                    name: 'get_credit_info'
                    text: 'Get Credit Info'
                ]
              ,
                xtype: 'textfield'
                name: 'before_adjust_line'
                fieldLabel: 'Before Adjust Line'

              ,
                xtype: 'textfield'
                name: 'increase_line'
                fieldLabel: 'Increase Line'

              ,
                xtype: 'container'
                layout: 'hbox'
                padding: '0 0 5 0'
                items: [
                    xtype: 'textfield'
                    name: 'after_adjust_line'
                    fieldLabel: 'After Adjust Line'
                    labelAlign: 'right'
                    labelWidth: 110
                    padding: '0 5 0 0'
                  ,
                    xtype: 'button'
                    name: 'update_to_front'
                    text: 'Update to Front'
                ]
              ,
                xtype: 'textfield'
                name: 'calculated_line'
                fieldLabel: 'Calculated Line'
                labelAlign: 'right'
            ]
        ]

    ]

    @callParent()
