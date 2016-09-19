//= require 'account_management/address'
//= require 'account_management/payment_receive'
//= require 'account_management/general_info_extra'
//= require 'account_management/general_info'

Ext.define 'AccountManagement.AccForm.UI',
  extend: 'Ext.form.Panel'
  layout: 'fit'
  alias: 'widget.account_management.account_form.ui'
  items: [
      xtype: 'tabpanel'
      items: [
          xtype: 'account_management.general_info'
        ,
          xtype: 'account_management.general_info_extra'
        ,
          xtype: 'account_management.payment_receive'
      ]
    # ,
    #   xtype: 'account_management.address'
  ]

  getValues: ->
    arglist = @callParent arguments
    console.log arglist
    # values.a = values['ss.ddd'] + val
    # values.client_account_code = values['location.location_code'] + values['client_account_code.account_sub_code'] + values['client_account_code.client_code']
    # delete values['location.location_code']
    # delete values['client_account_code.account_sub_code']
    # delete values['client_account_code.client_code']

    result = {}

    for prop, val of arglist
      keylist = (prop.split ".")
      if keylist.length == 1
        result[prop] = val
      else if keylist.length > 1
        KeyManage = (arr,value) ->
          console.log 'f1 start'
          keyresult_list = {}
          firstkey = arr[0]
          value_result = value
          index = arr.length - 1
          while (index >= 0)
            manage_list = {}
            firstkey = arr[index]
            manage_list[firstkey] = value_result
            value_result = manage_list
            if index == 0
              keyresult_list = manage_list
            index--
          keyresult_list
        result2 = KeyManage keylist,val
        console.log 'result2:     ',result2

        MergeRecursive = (obj1, obj2) ->
         for p of obj2
           try
             if obj2[p].constructor == Object
               obj1[p] = MergeRecursive(obj1[p], obj2[p])
             else
               obj1[p] = obj2[p]
           catch e
             obj1[p] = obj2[p]
         obj1
        result = MergeRecursive(result,result2)
        console.log 'Result:      ',result

    result
