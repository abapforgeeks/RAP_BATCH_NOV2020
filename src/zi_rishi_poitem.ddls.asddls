@AbapCatalog.sqlViewName: 'ZRISHI_POITEMV1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Item Data'
//@VDM.viewType: #BASIC
define view ZI_RISHI_POItem as select from zrishi_poitem
association[1..1] to ZI_RISHI_POHeader as _toHeader on $projection.PoDocument = _toHeader.PoDocument 
association[1..1] to I_Currency as _Currency on $projection.Currency = _Currency.Currency
association[1..1] to I_UnitOfMeasure as _UOM on $projection.Unit = _UOM.UnitOfMeasure{
    key po_document as PoDocument,
    @ObjectModel.text.element: ['ItemDesc']
    key po_item as PoItem,
    @Semantics.text: true
    item_desc as ItemDesc,
    vendor as Vendor,
    @Semantics.amount.currencyCode: 'Currency'
    price as Price,
    
    (price * quantity ) as ItemPrice,
    
    @Semantics.currencyCode: true
    currency as Currency,
    
    @Semantics.quantity.unitOfMeasure: 'Unit'
    quantity as Quantity,
    @Semantics.unitOfMeasure: true
    unit as Unit,
    change_date_time as ChangeDateTime,
    
    _toHeader,
    _Currency,
    _UOM
}
