using { S4HANA_Joule_SalesOrder } from './external/S4HANA_Joule_SalesOrder.cds';

using { CAP_Sales_Orders_GE159533 as my } from '../db/schema.cds';

@path : '/service/cAP_Sales_Orders_GE159533'
service cAP_Sales_Orders_GE159533Srv
{
    @odata.draft.enabled
    entity Transactions as
        projection on my.Transactions;

    entity A_SalesOrder as
        projection on S4HANA_Joule_SalesOrder.A_SalesOrder
        {
            SalesOrder,
            SalesOrderType,
            SalesOrganization,
            DistributionChannel,
            CreationDate,
            CreatedByUser,
            TotalNetAmount
        };
}

annotate cAP_Sales_Orders_GE159533Srv with @requires :
[
    'authenticated-user'
];
