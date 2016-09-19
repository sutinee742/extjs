Ext.define 'AccountManagement.GeneralInfo.UI',
  extend: 'Ext.form.Panel'
  alias: 'widget.account_management.general_info'
  title: 'ข้อมูลทั่วไป'
  layout:
    type: 'table'
    columns: 2
  padding: '5 5 5 5'
  items: [
      xtype: 'fieldset'
      width: 430
      layout:
        type: 'vbox'
      defaults:
        labelAlign: 'right'
      padding: '5 5 5 5'
      margin: '0 5 0 0'
      items: [
          xtype: 'combobox'
          name: 'status'
          fieldLabel: 'Status'
        ,
          xtype: 'combobox'
          name: 'account_type'
          fieldLabel: 'ประเภทบัญชี'
          width: 300
        ,
          xtype: 'textfield'
          name: 'client_code'
          fieldLabel: 'Client Code'
          width: 200
        ,
          xtype: 'fieldset'
          padding: '5 5 5 5'
          layout: 'vbox'
          width: 415
          items: [
              xtype: 'label'
              text: 'Client Details'
            ,
              xtype: 'container'
              layout: 'hbox'
              defaults:
                padding: '0 5 0 0'
              items: [
                  xtype: 'label'
                  text: 'Firstname:'
                ,
                  xtype: 'label'
                  name: 'client.client_firstname_en'
                  text: 'Tawi'
                ,
                  xtype: 'label'
                  text: 'Lastname:'
                ,
                  xtype: 'label'
                  name: 'client.client_lastname_en'
                  text: 'Srithong'
              ]
            ,
              xtype: 'container'
              layout: 'hbox'
              defaults:
                padding: '0 5 0 0'
              items: [
                  xtype: 'label'
                  text: 'Email:'
                ,
                  xtype: 'label'
                  name: 'email'
                  text: 'aaaa@mail.com'
                ,
                  xtype: 'label'
                  text: 'Branch:'
                ,
                  xtype: 'label'
                  name: 'location.location_name_en'
                  text: 'สำนักงานใหญ่'
              ]
            ,
              xtype: 'container'
              layout: 'hbox'
              defaults:
                padding: '0 5 0 0'
              items: [
                  xtype: 'label'
                  text: 'วงเงินรวม:'
                ,
                  xtype: 'label'
                  name: 'client.total_credit_limit'
                  text: '0.0'
                ,
                  xtype: 'label'
                  text: 'วงเงินที่ใช้ไป:'
                ,
                  xtype: 'label'
                  name: 'credit_used'
                  text: '***0.0'
              ]
          ]
        ,
          xtype: 'textfield'
          name: 'account_sub_code'
          fieldLabel: 'Account Sub Code'
          labelWidth: 120
          width: 155
        ,
          xtype: 'fieldset'
          name: 'client_account_code'
          layout:
            type: 'table'
            columns: 4
          border: 0
          padding: '0 0 0 70'
          defaults:
            padding: '0 0 -5 5'
          items: [
              xtype: 'label'
              text: 'เลขบัญชี:'
            ,
              xtype: 'textfield'
              name: 'location.location_code'
              width: 30
            ,
              xtype: 'textfield'
              name: 'client_account_code.client_code'
              width: 50
            ,
              xtype: 'textfield'
              name: 'client_account_code.account_sub_code'
              width: 30
          ]
        ,
          xtype: 'textfield'
          name: 'custodian_no'
          fieldLabel: 'Custodian No'
          padding: '-5 0 -5 0'
        ,
          xtype: 'fieldcontainer'
          defaultType: 'checkboxfield'
          padding: '0 0 -5 110'
          items: [
              boxLabel: 'PSMS Merge Flag'
              name: 'psms_merge_flag'
          ]
        ,
          xtype: 'textfield'
          name: 'pti_custodian_name'
          fieldLabel: 'Sending / Receiving name for PTI'
          labelWidth: 200
        ,
          xtype: 'container'
          layout: 'hbox'
          defaults:
            padding: '0 5 5 0'
          items: [
              xtype: 'combobox'
              name: 'cdb_cash_wtd_cond'
              fieldLabel: 'เงื่อนไขถอน Cash Balance'
              labelWidth: 200
              labelAlign: 'right'
            ,
              xtype: 'textfield'
              name: 'cdb-cash_wtd_pct'
              width: 50
          ]
        ,
          xtype: 'container'
          layout: 'hbox'
          padding: '0 0 5 0'
          items: [
              xtype: 'textfield'
              name: 'account_administrator'
              fieldLabel: 'ผู้ดูแลบัญชี'
              padding: '0 5 0 0'
              labelAlign: 'right'
            ,
              xtype: 'button'
              name: 'search'
              text: 'Search'
          ]
        ,
          xtype: 'textfield'
          name: 'credit_limit'
          fieldLabel: 'Credit Limit'
        ,
          xtype: 'textfield'
          name: 'loan_limit'
          fieldLabel: 'Loan Limit'
        ,
          xtype: 'datefield'
          fieldLabel: 'Review Date'
          name: 'review_date'
          submitFormat: 'Y-m-d'
          format: 'd/m/Y'
        ,
          xtype: 'combobox'
          name: 'gen_settlement_style'
          fieldLabel: 'เงื่อนไขพิมพ์ settlement'
          labelWidth: 200
        ,
          xtype: 'combobox'
          name: 'level_filtering_msg'
          fieldLabel: 'User ผู้มีสิทธิ์เห็น confirm message'
          labelWidth: 200
      ]
    ,
      xtype: 'container'
      layout: 'vbox'

      defaults:
        padding: '5 5 0 5'
        margin: '5 0 0 0'
        width: 328
      items: [
          xtype: 'fieldset'
          defaults:
            labelAlign: 'right'
          items: [
              xtype: 'textfield'
              name: 'settlement_fee'
              fieldLabel: 'Settlement Fee'
            ,
              xtype: 'combobox'
              name: 'sbl_trade_code'
              fieldLabel: 'SBL Trade'
            ,
              xtype: 'textfield'
              name: 'lending_limit'
              fieldLabel: 'Lender Limit'
            ,
              xtype: 'textfield'
              name: 'borrowing_limit'
              fieldLabel: 'Borrower Limit'
            ,
              xtype: 'fieldcontainer'
              defaultType: 'checkboxfield'
              padding: '0 0 0 50'
              defaults:
                padding: '0 0 -10 0'
              items: [
                  boxLabel: 'Retrieve ATS Bank Account from e-Dividend'
                  name: 'retrieve_ats_bank_acc_for_e_div_flag'
                ,
                  boxLabel: 'Turnover Flag'
                  name: 'turnover_flag'
              ]
          ]
        ,
          xtype: 'fieldset'
          defaults:
            labelAlign: 'right'
          items: [
              xtype: 'fieldcontainer'
              defaultType: 'checkboxfield'
              padding: '0 0 0 110'
              defaults:
                padding: '0 0 -10 0'
              items: [
                  boxLabel: 'ลูกค้า TSFC'
                  name: 'tsfc_flag'
                ,
                  boxLabel: 'การวางหลักประกัน'
                  name: 'collateral_flag'
              ]
            ,
              xtype: 'panel'
              height: 1
            ,
              xtype: 'combobox'
              name: 'itw_mode'
              fieldLabel: 'ลูกค้า Internet Broker'
            ,
              xtype: 'panel'
              height: 1
            ,
              xtype: 'fieldcontainer'
              defaultType: 'checkboxfield'
              padding: '0 0 0 110'
              defaults:
                padding: '0 0 -10 0'
              items: [
                  boxLabel: 'Internet Settrade'
                  name: 'settrade_flag'
              ]
            ,
              xtype: 'textfield'
              name: 'settrade_user'
              fieldLabel: 'Username'
            ,
              xtype: 'textfield'
              name: 'settrade_reference'
              fieldLabel: 'Reference Code'
            ,
              xtype: 'textfield'
              name: 'email'
              fieldLabel: 'Email'
            ,
              xtype: 'panel'
              height: 1
            ,
              xtype: 'fieldcontainer'
              defaultType: 'checkboxfield'
              padding: '0 0 0 110'
              defaults:
                padding: '0 0 -10 0'
              items: [
                  boxLabel: 'Flextrade'
                  name: 'flextrade_flag'
              ]
            ,
              xtype: 'combobox'
              name: 'flextrade_channel'
              fieldLabel: 'Flextrade Channel'
            ,
              xtype: 'textfield'
              name: 'flextrade_user'
              fieldLabel: 'Flextrade User'
          ]
        ,
          xtype: 'fieldset'
          defaults:
            labelAlign: 'right'

          items: [
              xtype: 'textfield'
              name: 'depository_account_code'
              fieldLabel: 'Depository Account Code'
              labelWidth: 150
            ,
              xtype: 'combobox'
              name: 'depository_mapping_type'
              fieldLabel: 'Depository Mapping Type'
              labelWidth: 150
          ]
      ]
  ]
