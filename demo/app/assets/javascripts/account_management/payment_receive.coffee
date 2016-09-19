Ext.define 'AccountManagement.PaymenAndReceive.UI',
  extend: 'Ext.form.Panel'
  alias: 'widget.account_management.payment_receive'
  title: 'Payment & Receive'
  height: 500
  defaults:
    width: 765
  items: [
      xtype: 'fieldset'
      title: 'Payment'
      defaults:
        labelAlign: 'right'
      items: [
          xtype: 'combobox'
          name: 'payment_method'
          fieldLabel: 'วิธีการจ่ายให้ลูกค้า'
        ,
          xtype: 'combobox'
          name: 'payment_check_bank'
          fieldLabel: 'เช็คธนาคาร'
        ,
          xtype: 'container'
          layout: 'hbox'
          border: 0
          padding: '0 0 5 0'
          items: [
              xtype: 'combobox'
              name: 'a.payment_bank'
              fieldLabel: 'เลขที่บัญชีธนาคาร'
              labelAlign: 'right'
            ,
              xtype: 'combobox'
              name: 'a.payment_bank_brn'
              padding: '0 0 0 5'
            ,
              xtype: 'textfield'
              name: 'a.payment_bank_acc'
              padding: '0 0 0 5'
          ]
        ,
          xtype: 'combobox'
          name: 'payment_pay_in_code'
          fieldLabel: 'Pay In Code'
      ]
    ,
      xtype: 'fieldset'
      title: 'Receive'
      defaults:
        labelAlign: 'right'
      items: [
          xtype: 'combobox'
          name: 'receive_method'
          fieldLabel: 'วิธีการรับจากลูกค้า'
        ,
          xtype: 'container'
          layout: 'hbox'
          border: 0
          padding: '0 0 5 0'
          items: [
              xtype: 'combobox'
              name: 'receive_bank'
              fieldLabel: 'เลขที่บัญชีธนาคาร'
              labelAlign: 'right'
            ,
              xtype: 'combobox'
              name: 'receive_bank_brn'
              padding: '0 0 0 5'
            ,
              xtype: 'textfield'
              name: 'receive_bank_acc'
              padding: '0 0 0 5'
          ]
        ,
          xtype: 'combobox'
          name: 'receive_pay_in_code'
          fieldLabel: 'Pay In Code'
      ]
    ,
      xtype: 'fieldset'
      title: 'e-Dividend'
      items: [
          xtype: 'container'
          layout: 'hbox'
          border: 0
          padding: '0 0 5 0'
          items: [
              xtype: 'combobox'
              name: 'bank_e_div'
              fieldLabel: 'e-Dividend'
              labelAlign: 'right'
            ,
              xtype: 'combobox'
              name: 'bank_brn_e_div'
              padding: '0 0 0 5'
            ,
              xtype: 'textfield'
              name: 'bank_acc_e_div'
              padding: '0 0 0 5'
              emptyText: 'ระบุเลขที่บัญชีธนาคาร'
          ]
        ,
          xtype: 'combobox'
          name: 'dividend_payment_type'
          fieldLabel: 'รับเงินปันผลโดย'
          labelAlign: 'right'
      ]

  ]
