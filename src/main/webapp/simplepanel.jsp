<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div id="test"></div>
<script>
    Ext.Loader.setConfig({enabled: true});

    Ext.Loader.setPath('Ext', '/extjs');

    Ext.require([
        'Ext.Msg',
        'Ext.panel.*'
    ]);

    Ext.onReady(function () {
        //Ext.Msg.alert('Заголовок','Hello World');

        var panel = Ext.create("Ext.panel.Panel", {
            renderTo: Ext.get('test'),
            title: "My first panel",
            width: 300,
            height: 200,
            html: "The content",
            collapsable: true,

            tools: [
                {type: "help"},
                {type: "search"},
                {type: "gear"},
                {type: "print"}
            ],

            dockedItems: [{
                xtype: "toolbar",
                dock: "top",
                items: ["Top toolbar!"]
            }, {
                xtype: "toolbar",
                dock: "bottom",
                items: ["Bottom toolbar!"]
            }, {
                xtype: "toolbar",
                dock: "left",
                items: ["Left<br /> toolbar!"]
            }, {
                xtype: "toolbar",
                dock: "right",
                items: ["Right<br /> toolbar!"]
            }]

        });

        panel.center();

        window.onresize = function (event) {
            panel.center();
        };

    });

</script>