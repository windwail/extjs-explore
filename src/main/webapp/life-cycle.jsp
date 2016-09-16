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

        Ext.define('MyApp.test.LifecycleExample', {
                    extend: 'Ext.Component',
                    initComponent: function () {
                        var me = this;

                        me.width = 200;
                        me.height = 100;
                        me.html = {
                            tag: 'div',
                            html: 'X',
                            style: {
                                'float': 'right',
                                'padding': '10px',
                                'background-color': '#e00',
                                'color': '#fff',
                                'font-weight': 'bold',
                                'cursor': 'pointer'


                            }
                        };
                        me.myOnwProperty = [1, 2, 3, 4];
                        me.callParent();
                        console.log('1. initComponent');
                    },

                    beforeRender: function () {
                        console.log('2. beforeRender');
                        this.callParent(arguments);
                    }
                    ,
                    onRender: function () {
                        console.log('3. onRender');
                        this.callParent(arguments);
                        this.el.setStyle('background-color', '#ccc');
                    }
                    ,
                    afterRender: function () {
                        console.log('4. afterRender');
                        this.el.down('div').on('click', this.myCallback, this);
                        this.callParent(arguments);
                    }
                    ,
                    beforeDestroy: function () {
                        console.log('5. beforeDestroy');
                        this.callParent(arguments);
                    }
                    ,
                    onDestroy: function () {
                        console.log('6. onDestroy');
                        delete this.myOwnProperty;
                        this.el.down('div').un('click', this.myCallback);
                        this.callParent(arguments);
                    }
                    ,
                    myCallback: function () {
                        var me = this;
                        Ext.Msg.confirm('Confirmation', 'Are you sure you want to close this panel ? ', function (btn) {
                            if (btn === 'yes') {
                                me.destroy();
                            }
                        });
                    }
                }
        );

        Ext.create('MyApp.test.LifecycleExample', {
            renderTo: Ext.get('test')
        });

    });

</script>