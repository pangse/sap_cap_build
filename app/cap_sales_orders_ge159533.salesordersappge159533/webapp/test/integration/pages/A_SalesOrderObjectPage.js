sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'capsalesordersge159533.salesordersappge159533',
            componentId: 'A_SalesOrderObjectPage',
            contextPath: '/A_SalesOrder'
        },
        CustomPageDefinitions
    );
});