/**
 * 
 * @Before(event = { "READ" }, entity = "cAP_Sales_Orders_GE159533Srv.A_SalesOrder")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
    const externalService = await cds.connect.to('S4HANA_Joule_SalesOrder');
    const { A_SalesOrder } = externalService.entities;

    if (request.query && request.query.SELECT) {
        // Modify the query to sort by CreationDate descending and limit to 300 records
        request.query.SELECT.orderBy = [{ ref: ['CreationDate'], sort: 'desc' }];
        request.query.SELECT.limit = { rows: { val: 300 } };
    }

    // Execute the modified query on the external service
    const salesOrders = await externalService.run(request.query);
    return salesOrders;
}