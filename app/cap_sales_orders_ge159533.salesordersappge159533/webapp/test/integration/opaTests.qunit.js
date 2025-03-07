sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capsalesordersge159533/salesordersappge159533/test/integration/FirstJourney',
		'capsalesordersge159533/salesordersappge159533/test/integration/pages/A_SalesOrderList',
		'capsalesordersge159533/salesordersappge159533/test/integration/pages/A_SalesOrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, A_SalesOrderList, A_SalesOrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capsalesordersge159533/salesordersappge159533') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheA_SalesOrderList: A_SalesOrderList,
					onTheA_SalesOrderObjectPage: A_SalesOrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);