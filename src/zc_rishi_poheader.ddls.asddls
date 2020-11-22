@AbapCatalog.sqlViewName: 'ZCRISHIPOHEAD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View'

//@VDM.viewType: #CONSUMPTION
define view ZC_RISHI_POHEADER as select from ZI_RISHI_POToalPrice {
    key PoDocument,
    POTotalPrice,
    Currency,
    PoDesc,
    @ObjectModel.text.element: ['StatusText']
    PoStatus,
    @Semantics.text: true
   _Status.Text as StatusText,
   @ObjectModel.text.element: ['PriorityText']
    PoPriority,
    @Semantics.text: true
    _Priority.Text as PriorityText,
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
