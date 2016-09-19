Ext.define 'AccountManagement.GeneralInfoExtra.UI',
  extend: 'Ext.form.Panel'
  alias: 'widget.account_management.general_info_extra'
  title: 'ข้อมูลทั่วไป-เพิ่มเติม'
  height: 500
  defaults:
    width: 765
  items: [
      xtype: 'fieldset'
      width: 400
      layout:
        type: 'table'
        columns: 2
        rows: 5
      padding: '10 10 10 10'
      defaults:
        labelAlign: 'right'
      items: [
          xtype: 'fieldcontainer'
          defaultType: 'checkboxfield'
          items: [
              boxLabel: 'Pre-Confirm'
              name: 'preconfirm_req'
          ]
        ,
          xtype: 'combobox'
          name: 'confirm_delivery_method'
          fieldLabel: 'ส่งใบ confirm'
        ,
          xtype: 'label'
        ,
          xtype: 'combobox'
          name: 'statement_delivery_method'
          fieldLabel: 'ส่งใบ statement'
        ,
          xtype: 'label'
        ,
          xtype: 'combobox'
          name: 'interest_delivery_method'
          fieldLabel: 'ส่งใบดอกเบี้ย'
        ,
          xtype: 'label'
        ,
          xtype: 'textfield'
          name: 'mobile_phone_1'
          fieldLabel: 'Mobile Phone 1'
        ,
          xtype: 'label'
        ,
          xtype: 'textfield'
          name: 'mobile_phone_2'
          fieldLabel: 'Mobile Phone 2'
      ]
    ,
      xtype: 'fieldset'
      title: 'ความสามารถ'
      padding: '5 5 5 5'
      defaults:
        labelAlign: 'right'
        padding: '0 0 0 70'
      items: [
          xtype: 'fieldset'
          width: 730
          padding: '0 0 0 0'
          items: [
              xtype: 'fieldcontainer'
              defaultType: 'checkboxfield'
              layout:
                type: 'table'
                columns: 2
              items: [
                  boxLabel: 'ซื่อหุ้น'
                  name: 'buy_stock_flag'
                ,
                  boxLabel: 'Order Check PWD'
                  name: 'order_chk_pwd_flag'
                ,
                  boxLabel: 'ขายหุ้น'
                  name: 'sell_stock_flag'
                ,
                  boxLabel: 'Review Order'
                  name: 'order_review_flag'
                ,
                  boxLabel: 'ซื่อหุ้นติด DS'
                  name: 'buy_ds_stock_flag'
                  padding: '0 5 0 0'
                ,
                  boxLabel: 'Mark to Market / Can view cus on Inv'
                  name: 'mark_to_market_flag'
              ]
          ]
        ,
          xtype: 'combobox'
          name: 'short_sell_cond'
          fieldLabel: 'ขาย short ได้'
        ,
          xtype: 'combobox'
          name: 'lending_stock_cond'
          fieldLabel: 'ขาย lending stock'
        ,
          xtype: 'combobox'
          name: 'over_credit_cond'
          fieldLabel: 'เกินวงเงิน'
        ,
          xtype: 'textfield'
          name: 'approved_pct'
          fieldLabel: 'Percent Approve'
        ,
          xtype: 'textfield'
          name: 'max_value_per_order'
          fieldLabel: 'มูลค่าสูงสุดต่อ Order'
          labelWidth: 170
          width: 400
          padding: '0 0 0 0'

      ]
  ]
