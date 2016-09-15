Ext.Loader.setConfig({enabled: true});

// указываем нашу папку с framework'ом
Ext.Loader.setPath('Ext', '/extjs');

// Указываем какие библиотеки подключить, можно внутри написать просто '*' и он подключит всё
Ext.require([
    'Ext.Msg'
]);

// Метод onReady отвечает за запуск скрипта внутри анонимной функции по завершении загрузки страницы
Ext.onReady(function(){
    // Метод alert из пакета Ext.Msg равносилен стандарной JS функции alert();,
    // первый параметр - это загаловок, второй сам текст
    Ext.Msg.alert('Заголовок','Hello World');
});

