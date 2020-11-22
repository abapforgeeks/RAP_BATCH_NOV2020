@AbapCatalog.sqlViewName: 'ZRISHI_POPRICE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Total Price PO CDS View'
//@VDM.viewType: #COMPOSITE
define view ZI_RISHI_POToalPrice
  as select from ZI_RISHI_POHeader
{
  key PoDocument,
      sum( _toItem.ItemPrice ) as POTotalPrice,
      _toItem.Currency         as Currency,
      PoDesc,
      PoStatus,
      PoPriority,
      Ccode,
      CreateBy,
      CreatedDateTime,
      ChangedDateTime,
      TotalChange,
      /* Associations */
      _Priority,
      _Status,
      _toItem
}
group by
  PoDesc,
  PoDocument,
  PoStatus,
  PoPriority,
  Ccode,
  CreateBy,
  CreatedDateTime,
  ChangedDateTime,
  TotalChange,
  _toItem.Currency
