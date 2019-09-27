/*
  This view exposes the business object to the outside world
  We're going to
  - Potentially restrict what a consumer can do with the business object
  - Piblich the model as OData
*/

@AbapCatalog.sqlViewName: 'Y_TODO_C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Todos model'

// @VDM.viewType: #CONSUMPTION

@Search.searchable: true

@Metadata.allowExtensions: true

@ObjectModel: {

  -- Annotations for transactional processing
  semanticKey: 'title',
  compositionRoot: true,
  transactionalProcessingDelegated: true,
  createEnabled: true,
  deleteEnabled: true,
  updateEnabled: true,

  -- Additional annotation for draft enablement
  draftEnabled: true
}

@OData.publish: true

define view YTODO_C as select from YTODO
{
  key todouuid,
  title,
  status,
  assignee,
  duedate,
  createdby,
  createdat,
  changedby,
  changedat,
  age,
  overdue
 
}
