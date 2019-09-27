/*
  This view resembles the business object node modelling in BOPF
  We're going to
  - Associate all related basic views
  - add calculated fields which are based only on the table itself
  - Annotate the model so that BOPF knows how to generate the node model
  - Add assosications to the outside world (e. g. configuration, cross-BO)
*/
@AbapCatalog.sqlViewName: 'Z_TODO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Simple Todos based on CDS and BOPF'

@Search.searchable: true

@ObjectModel: {

  -- Annotations for transactional processing
  semanticKey: 'title',
  compositionRoot: true,
  transactionalProcessingEnabled: true,
  createEnabled: true,
  deleteEnabled: true,
  updateEnabled: true,
  writeActivePersistence: 'ZTODO_ROOT_DB',

  -- Additional annotations for draft enablement
  draftEnabled: true,
  writeDraftPersistence: 'ZTODO_D', // suffix: '_D' for all draft persistences

  -- Additional ETag annotation (time stamp)
  entityChangeStateId: 'ChangedAt'
}


define view ZTODO
  as select from ZTODO_ROOT_B {
  
  key db_key,
  
  @Search.defaultSearchElement: true
  title,
  
  status,
  assignee,
  duedate,
  createdby,
  createdat,
  changedby,
  changedat,
  

  // transient fields - equivalent of after loading determinations
  tstmp_seconds_between(createdat, tstmp_current_utctimestamp( ), 'NULL') as age,
  case when duedate < $session.system_date then 'X'
   else ''
  end as overdue
}
