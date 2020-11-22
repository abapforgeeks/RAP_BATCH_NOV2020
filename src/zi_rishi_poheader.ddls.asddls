@AbapCatalog.sqlViewName: 'ZRISH_POHEAD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Order header'
//@VDM.viewType: #BASIC
define view ZI_RISHI_POHeader
  as select from zrishi_podoc
  association [0..*] to ZI_RISHI_POItem     as _toItem   on $projection.PoDocument = _toItem.PoDocument
  association [0..1] to ZI_RISHI_POStatus   as _Status   on $projection.PoStatus = _Status.Status
  association [0..1] to ZI_RISHI_POPriority as _Priority on $projection.PoPriority = _Priority.Priority
{
      @ObjectModel.text.element: ['PoDesc']
  key po_document       as PoDocument,
      @Semantics.text: true
      po_desc           as PoDesc,
      po_status         as PoStatus,
      po_priority       as PoPriority,
      ccode             as Ccode,
      create_by         as CreateBy,
      created_date_time as CreatedDateTime,
      changed_date_time as ChangedDateTime,
      total_change      as TotalChange,

      _toItem,
      _Status,

      _Priority
}
