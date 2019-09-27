/*
  In this view, we're going to project the DB view:
  - reduce fields if only technical.
*/
@AbapCatalog.sqlViewName: 'Z_TODO_ROOT_B'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Todos root node'
//@VDM.viewType: #BASIC
define view ZTODO_ROOT_B
  as select from ztodo_root_db {
  
  key mandt,
  key db_key,
  title,
  status,
  assignee,
  duedate,

  @Semantics.systemDateTime.createdAt: true
  createdat,

  @Semantics.user.createdBy: true
  createdby,
  
  @Semantics.systemDateTime.lastChangedAt: true
  changedat,
  
  @Semantics.user.lastChangedBy: true
  changedby
}
