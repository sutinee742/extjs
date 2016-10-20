//= require 'opd2/opd2.ui'
//= require 'opd2/opd2_form'

Ext.define 'OPD2.Event',
  extend: 'OPD2.UI'

  bind: ->
    me = @

    me.on 'form_submit', (form) ->
      console.log 'Save'
      console.log form.getValues()

    me.on 'close_detail', (form) ->
      console.log 'Close Detail'


    btn_criteria = @down 'button[name=btn_criteria]'
    console.log btn_criteria

    btn_opd2_form_test = @down 'button[name=btn_opd2_form_test]'
    console.log btn_opd2_form_test

    btn_opd2_form_test.on 'click', ->
      window = Ext.create 'Ext.window.Window',
        title: 'OPD2 Form'
        layout: 'form'
        width: 800
        height: 600
        closeAction: 'close'

        plaint: true
        items: [
          xtype: 'opd2.opd2_form.ui'
        ]
        buttons: [
            text: 'Save'
            name: 'save'
            handler: ->
              me.fireEvent 'form_submit', window.items.getAt 0
          ,
            text: 'Close Detail'
            name: 'close_detail'
            handler: ->
              me.fireEvent 'close_detail', window.items.getAt 0
        ]
        buttonAlign: 'right'
      window.show()
