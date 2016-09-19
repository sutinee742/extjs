//= require 'account_management/ui'
//= require 'account_management/acc_form.ui'

Ext.define 'AccountManagement.Event',
  extend: 'AccountManagement.UI'
  bind: ->
    me = @
    me.on 'form_submit', (form) ->
      # console.log window.items.getAt 0
      # form = window.items.getAt 0
      console.log 'ddddd'
      console.log form.getValues()


    btn_search = @down 'button[name=search]'
    console.log btn_search

    btn_search.on 'click', ->
      console.log 'search'
      console.log me.getValues()

    console.log 'AccountManagement'
    btn_up_acc = @down 'button[name=btn_up_acc]'
    console.log btn_up_acc

    btn_up_acc.on 'click', ->

      #window
      window = Ext.create 'Ext.window.Window',
        title: 'Update Account'
        layout: 'form'
        width: 800
        height: 600
        closeAction: 'close'

        plaint: true
        items: [
          xtype: 'account_management.account_form.ui'
        ]
        buttons: [
            text: 'Save'
            name: 'save'
            #save events
            handler: ->
              console.log 'abc'
              me.fireEvent 'form_submit', window.items.getAt 0
        ]
        buttonAlign: 'right'
      window.show()
