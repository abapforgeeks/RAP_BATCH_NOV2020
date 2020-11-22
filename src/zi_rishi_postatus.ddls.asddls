@AbapCatalog.sqlViewName: 'ZRISHI_POSTATV1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status PO'
define view ZI_RISHI_POStatus as select from zrishi_postatus {
@ObjectModel.text.element: ['Text']
    key status as Status,
    @Semantics.text: true
    text as Text
}
