Ext.define 'AccountManagement.Addrress.UI',
  extend: 'Ext.Panel'
  alias: 'widget.account_management.address'
  title: 'ข้อมูลที่อยู่'
  items: [
      Ext.create 'Ext.tab.Panel',
        items: [
            Ext.create 'Ext.Panel',
              title: 'ที่อยู่ปัจจุบัน'
              name: 'client.current_contact_id'
              items: [
                  xtype: 'fieldset'
                  title: 'Current Address'
                  padding: '10 10 10 10'
                  layout:
                    type: 'table'
                    columns: 2
                  defaults:
                    labelAlign: 'right'
                    padding: '0 0 0 30'
                  items: [
                      xtype: 'textfield'
                      name: 'addr_number'
                      fieldLabel: 'เลขที่'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textareafield'
                      name: 'other'
                      fieldLabel: 'ชื่อบริษัท / หมู่บ้าน / อาคาร / ชั้น / ห้อง / หมู่ที่ / ซอย'
                      width: 300
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'street'
                      fieldLabel: 'ถนน'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'sub_district'
                      fieldLabel: 'แขวง / ตำบล'
                    ,
                      xtype: 'textfield'
                      name: 'district'
                      fieldLabel: 'เขต / อำเภอ'
                    ,
                      xtype: 'combobox'
                      name: 'province'
                      fieldLabel: 'จังหวัด'
                    ,
                      xtype: 'combobox'
                      name: 'country_code'
                      fieldLabel: 'ประเทศ'
                    ,
                      xtype: 'textfield'
                      name: 'zip_code'
                      fieldLabel: 'รหัสไปรษณีย์'
                    ,
                      xtype: 'textfield'
                      name: 'telephone'
                      fieldLabel: 'โทรศัพท์'
                    ,
                      xtype: 'textfield'
                      name: 'fax1'
                      fieldLabel: 'โทรสาร 1'
                    ,
                      xtype: 'textfield'
                      name: 'fax2'
                      fieldLabel: 'โทรสาร 2'
                    ,
                      xtype: 'textfield'
                      name: 'contact_person'
                      fieldLabel: 'บุคคลติดต่อ'
                    ,
                      xtype: 'textfield'
                      name: 'contact_phone'
                      fieldLabel: 'โทรศัพท์ติดต่อ'
                    ,
                      xtype: 'fieldset'
                      title: 'ที่อยู่ตามแบบ'
                      width: 730
                      padding: '10 10 10 10'
                      colspan: 2
                      defaults:
                        labelAlign: 'right'
                        width: 500
                      items: [
                          xtype: 'textfield'
                          name: 'addr1'
                          fieldLabel: '1'
                        ,
                          xtype: 'textfield'
                          name: 'addr2'
                          fieldLabel: '2'
                        ,
                          xtype: 'textfield'
                          name: 'addr3'
                          fieldLabel: '3'
                        ,
                          xtype: 'textfield'
                          name: 'addr4'
                          fieldLabel: '4'
                      ]
                  ]
              ]
          ,
            Ext.create 'Ext.Panel',
              title: 'ที่อยู่บริษัท'
              name: 'client.office_contact_id'
              items: [
                  xtype: 'fieldset'
                  title: 'Office Address'
                  layout:
                    type: 'table'
                    columns: 2
                  defaults:
                    labelAlign: 'right'
                    padding: '0 0 0 30'
                  items: [
                      xtype: 'combobox'
                      name: 'copy_from'
                      fieldLabel: 'คัดลอกจาก'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'addr_number'
                      fieldLabel: 'เลขที่'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textareafield'
                      name: 'other'
                      fieldLabel: 'ชื่อบริษัท / หมู่บ้าน / อาคาร / ชั้น / ห้อง / หมู่ที่ / ซอย'
                      width: 300
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'street'
                      fieldLabel: 'ถนน'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'sub_district'
                      fieldLabel: 'แขวง / ตำบล'
                    ,
                      xtype: 'textfield'
                      name: 'district'
                      fieldLabel: 'เขต / อำเภอ'
                    ,
                      xtype: 'combobox'
                      name: 'province'
                      fieldLabel: 'จังหวัด'
                    ,
                      xtype: 'combobox'
                      name: 'country_code'
                      fieldLabel: 'ประเทศ'
                    ,
                      xtype: 'textfield'
                      name: 'zip_code'
                      fieldLabel: 'รหัสไปรษณีย์'
                    ,
                      xtype: 'textfield'
                      name: 'telephone'
                      fieldLabel: 'โทรศัพท์'
                    ,
                      xtype: 'textfield'
                      name: 'fax1'
                      fieldLabel: 'โทรสาร 1'
                    ,
                      xtype: 'textfield'
                      name: 'fax2'
                      fieldLabel: 'โทรสาร 2'
                    ,
                      xtype: 'textfield'
                      name: 'contact_person'
                      fieldLabel: 'บุคคลติดต่อ'
                    ,
                      xtype: 'textfield'
                      name: 'contact_phone'
                      fieldLabel: 'โทรศัพท์ติดต่อ'
                    ,
                      xtype: 'fieldset'
                      title: 'ที่อยู่ตามแบบ'
                      width: 730
                      padding: '5 5 5 5'
                      colspan: 2
                      defaults:
                        labelAlign: 'right'
                        width: 500
                      items: [
                          xtype: 'textfield'
                          name: 'addr1'
                          fieldLabel: '1'
                        ,
                          xtype: 'textfield'
                          name: 'addr2'
                          fieldLabel: '2'
                        ,
                          xtype: 'textfield'
                          name: 'addr3'
                          fieldLabel: '3'
                        ,
                          xtype: 'textfield'
                          name: 'addr4'
                          fieldLabel: '4'
                      ]
                  ]
              ]
          ,
            Ext.create 'Ext.Panel',
              title: 'ที่อยู่ตามทะเบียนบ้าน'
              name: 'client.legal_contact_id'
              items: [
                  xtype: 'fieldset'
                  title: 'Legal Address'
                  layout:
                    type: 'table'
                    columns: 2
                  defaults:
                    labelAlign: 'right'
                    padding: '0 0 0 30'
                  items: [
                      xtype: 'combobox'
                      name: 'copy_from'
                      fieldLabel: 'คัดลอกจาก'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'addr_number'
                      fieldLabel: 'เลขที่'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textareafield'
                      name: 'other'
                      fieldLabel: 'ชื่อบริษัท / หมู่บ้าน / อาคาร / ชั้น / ห้อง / หมู่ที่ / ซอย'
                      width: 300
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'street'
                      fieldLabel: 'ถนน'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'sub_district'
                      fieldLabel: 'แขวง / ตำบล'
                    ,
                      xtype: 'textfield'
                      name: 'district'
                      fieldLabel: 'เขต / อำเภอ'
                    ,
                      xtype: 'combobox'
                      name: 'province'
                      fieldLabel: 'จังหวัด'
                    ,
                      xtype: 'combobox'
                      name: 'country_code'
                      fieldLabel: 'ประเทศ'
                    ,
                      xtype: 'textfield'
                      name: 'zip_code'
                      fieldLabel: 'รหัสไปรษณีย์'
                    ,
                      xtype: 'textfield'
                      name: 'telephone'
                      fieldLabel: 'โทรศัพท์'
                    ,
                      xtype: 'textfield'
                      name: 'fax1'
                      fieldLabel: 'โทรสาร 1'
                    ,
                      xtype: 'textfield'
                      name: 'fax2'
                      fieldLabel: 'โทรสาร 2'
                    ,
                      xtype: 'textfield'
                      name: 'contact_person'
                      fieldLabel: 'บุคคลติดต่อ'
                    ,
                      xtype: 'textfield'
                      name: 'contact_phone'
                      fieldLabel: 'โทรศัพท์ติดต่อ'
                    ,
                      xtype: 'fieldset'
                      title: 'ที่อยู่ตามแบบ BSB'
                      width: 730
                      padding: '5 5 5 5'
                      colspan: 2
                      defaults:
                        labelAlign: 'right'
                        width: 500
                      items: [
                          xtype: 'textfield'
                          name: 'addr1'
                          fieldLabel: '1'
                        ,
                          xtype: 'textfield'
                          name: 'addr2'
                          fieldLabel: '2'
                        ,
                          xtype: 'textfield'
                          name: 'addr3'
                          fieldLabel: '3'
                        ,
                          xtype: 'textfield'
                          name: 'addr4'
                          fieldLabel: '4'
                      ]
                  ]
              ]
          ,
            Ext.create 'Ext.Panel',
              title: 'ที่อยู่สำหรับการส่งเอกสาร'
              name: 'client.deliver_contact_id'
              items: [
                  xtype: 'fieldset'
                  title: 'Deliver Address'
                  layout:
                    type: 'table'
                    columns: 2
                  defaults:
                    labelAlign: 'right'
                    padding: '0 0 0 30'
                  items: [
                      xtype: 'combobox'
                      name: 'copy_from'
                      fieldLabel: 'คัดลอกจาก'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'addr_number'
                      fieldLabel: 'เลขที่'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textareafield'
                      name: 'other'
                      fieldLabel: 'ชื่อบริษัท / หมู่บ้าน / อาคาร / ชั้น / ห้อง / หมู่ที่ / ซอย'
                      width: 300
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'street'
                      fieldLabel: 'ถนน'
                    ,
                      xtype: 'label'
                    ,
                      xtype: 'textfield'
                      name: 'sub_district'
                      fieldLabel: 'แขวง / ตำบล'
                    ,
                      xtype: 'textfield'
                      name: 'district'
                      fieldLabel: 'เขต / อำเภอ'
                    ,
                      xtype: 'combobox'
                      name: 'province'
                      fieldLabel: 'จังหวัด'
                    ,
                      xtype: 'combobox'
                      name: 'country_code'
                      fieldLabel: 'ประเทศ'
                    ,
                      xtype: 'textfield'
                      name: 'zip_code'
                      fieldLabel: 'รหัสไปรษณีย์'
                    ,
                      xtype: 'textfield'
                      name: 'telephone'
                      fieldLabel: 'โทรศัพท์'
                    ,
                      xtype: 'textfield'
                      name: 'fax1'
                      fieldLabel: 'โทรสาร 1'
                    ,
                      xtype: 'textfield'
                      name: 'fax2'
                      fieldLabel: 'โทรสาร 2'
                    ,
                      xtype: 'textfield'
                      name: 'contact_person'
                      fieldLabel: 'บุคคลติดต่อ'
                    ,
                      xtype: 'textfield'
                      name: 'contact_phone'
                      fieldLabel: 'โทรศัพท์ติดต่อ'
                    ,
                      xtype: 'fieldset'
                      title: 'ที่อยู่ตามแบบ BSB'
                      width: 730
                      padding: '5 5 5 5'
                      colspan: 2
                      defaults:
                        labelAlign: 'right'
                        width: 500
                      items: [
                          xtype: 'textfield'
                          name: 'addr1'
                          fieldLabel: '1'
                        ,
                          xtype: 'textfield'
                          name: 'addr2'
                          fieldLabel: '2'
                        ,
                          xtype: 'textfield'
                          name: 'addr3'
                          fieldLabel: '3'
                        ,
                          xtype: 'textfield'
                          name: 'addr4'
                          fieldLabel: '4'
                      ]
                  ]
              ]



        ]
  ]
