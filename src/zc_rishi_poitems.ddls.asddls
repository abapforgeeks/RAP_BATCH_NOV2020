@AbapCatalog.sqlViewName: 'ZCRISHIPOITEMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Item Data'
//@VDM.viewType: #CONSUMPTION
define view ZC_RISHI_POITEMS as select from ZI_RISHI_POItem {
    key PoDocument,
    key PoItem,
    ItemDesc,
    Vendor,
    Price,
    ItemPrice,
    Currency,
    Quantity,
    Unit,
    ChangeDateTime,
    /* Associations */
    _Currency,
    _toHeader,
    _UOM
}
