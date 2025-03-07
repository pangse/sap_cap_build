using { S4HANA_Joule_SalesOrder } from '../srv/external/S4HANA_Joule_SalesOrder.cds'; 
namespace CAP_Sales_Orders_GE159533;
using { cuid, managed } from '@sap/cds/common';

entity Transactions : cuid, managed {
  customer: String(100);
  material: String(100);
  quantity: Integer;
  product: String(100);
  deliveryDate: Date;
}

