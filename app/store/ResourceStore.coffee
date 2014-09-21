Ext.define "GSW.store.ResourceStore",
  extend: "Ext.data.TreeStore"
  root:
    text: "Ext JS"
    expanded: true
    children: [
      text: "Documents"
      children: [
        text: "安政見聞録（上）"
        leaf: false
        children: [
           leaf: true, text: "Page 01", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_01.jpg", type: "document"
         ,
           leaf: true, text: "Page 02", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_02.jpg", type: "document"
         ,
           leaf: true, text: "Page 03", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_03.jpg", type: "document"
         ,
           leaf: true, text: "Page 04", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_04.jpg", type: "document"
         ,
           leaf: true, text: "Page 05", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_05.jpg", type: "document"
         ,
           leaf: true, text: "Page 06", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_06.jpg", type: "document"
         ,
           leaf: true, text: "Page 07", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_07.jpg", type: "document"
         ,
           leaf: true, text: "Page 08", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_08.jpg", type: "document"
         ,
           leaf: true, text: "Page 09", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_09.jpg", type: "document"
         ,
           leaf: true, text: "Page 10", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_10.jpg", type: "document"
         ,
           leaf: true, text: "Page 11", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_11.jpg", type: "document"
         ,
           leaf: true, text: "Page 12", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_12.jpg", type: "document"
         ,
           leaf: true, text: "Page 13", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_13.jpg", type: "document"
         ,
           leaf: true, text: "Page 14", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_14.jpg", type: "document"
         ,
           leaf: true, text: "Page 15", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_15.jpg", type: "document"
         ,
           leaf: true, text: "Page 16", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_16.jpg", type: "document"
         ,
           leaf: true, text: "Page 17", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_17.jpg", type: "document"
         ,
           leaf: true, text: "Page 18", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_18.jpg", type: "document"
         ,
           leaf: true, text: "Page 19", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_19.jpg", type: "document"
         ,
           leaf: true, text: "Page 20", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_20.jpg", type: "document"
         ,
           leaf: true, text: "Page 21", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_21.jpg", type: "document"
         ,
           leaf: true, text: "Page 22", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_22.jpg", type: "document"
         ,
           leaf: true, text: "Page 23", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_23.jpg", type: "document"
         ,
           leaf: true, text: "Page 24", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_24.jpg", type: "document"
         ,
           leaf: true, text: "Page 25", url: "http://yuta1984.github.io/images/ansei_jou/ansei_jou_25.jpg", type: "document"
        ]
      ,
        text: "安政見聞録（中）"
        leaf: false
        children: [
          leaf: true, text: "Page 001"
        ,
          leaf: true, text: "Page 002"
        ,
          leaf: true, text: "Page 003"
        ,
          leaf: true, text: "Page 004"
        ,
          leaf: true, text: "Page 005"
        ,
          leaf: true, text: "Page 006"
        ,
          leaf: true, text: "Page 007"                                        
        ]
      ,
      
      ]
    ,
      text: "Location/Map"
      expanded: false
      children: [
        leaf: true
        text: "Kyoto"
        type: "map"
      ]
    ,
      text: "People"
      expanded: false
      children: [
        leaf: true
        text: "Button.js"
      ]
    ,
      text: "Datetime"
      expanded: false
      children: [
        leaf: true
        text: "Button.js"
      ]
    ]
