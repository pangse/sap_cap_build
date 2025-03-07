using { cAP_Sales_Orders_GE159533Srv } from '../srv/service.cds';

annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.HeaderInfo: { TypeName: 'Transaction', TypeNamePlural: 'Transactions' };
annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.DataPoint #customer: {
  Value: customer,
  Title: 'Customer',
};
annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.DataPoint #material: {
  Value: material,
  Title: 'Material',
};
annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.DataPoint #quantity: {
  Value: quantity,
  Title: 'Quantity',
};
annotate cAP_Sales_Orders_GE159533Srv.Transactions with {
  customer @title: 'Customer';
  material @title: 'Material';
  quantity @title: 'Quantity';
  product @title: 'Product';
  deliveryDate @title: 'Delivery Date';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: customer },
 { $Type: 'UI.DataField', Value: material },
 { $Type: 'UI.DataField', Value: quantity },
 { $Type: 'UI.DataField', Value: product },
 { $Type: 'UI.DataField', Value: deliveryDate }
];

annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: customer },
 { $Type: 'UI.DataField', Value: material },
 { $Type: 'UI.DataField', Value: quantity },
 { $Type: 'UI.DataField', Value: product },
 { $Type: 'UI.DataField', Value: deliveryDate },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#customer' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#material' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#quantity' }
];

annotate cAP_Sales_Orders_GE159533Srv.Transactions with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

