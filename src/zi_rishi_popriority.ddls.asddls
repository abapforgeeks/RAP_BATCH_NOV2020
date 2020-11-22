@AbapCatalog.sqlViewName: 'ZRISHI_POPRIOV1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Priority'
define view ZI_RISHI_POPriority as select from zrishi_poprio {
@ObjectModel.text.element: ['Text']
    key priority as Priority,
    @Semantics.text: true
    text as Text
}
