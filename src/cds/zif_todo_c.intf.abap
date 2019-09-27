interface ZIF_TODO_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ZTODO,
 ACTIVATION                     TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33FA70988ABC5',
 CREATE_ZTODO                   TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AECCBC5',
 DELETE_ZTODO                   TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AED4BC5',
 EDIT                           TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33FA709888BC5',
 LOCK_ZTODO                     TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AEC0BC5',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33FA70988EBC5',
 SAVE_ZTODO                     TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AEDCBC5',
 UNLOCK_ZTODO                   TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AEC4BC5',
 UPDATE_ZTODO                   TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AED0BC5',
 VALIDATE_ZTODO                 TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33F8D0AED8BC5',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE '0242AC1100021EE9B8A33FA70988CBC5',
      END OF ZTODO,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ZTODO,
        BEGIN OF EDIT,
 PRESERVE_CHANGES               TYPE STRING VALUE 'PRESERVE_CHANGES',
        END OF EDIT,
        BEGIN OF LOCK_ZTODO,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
        END OF LOCK_ZTODO,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF UNLOCK_ZTODO,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
        END OF UNLOCK_ZTODO,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZTODO,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF ZTODO,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE '0242AC1100021EE9B8A33FA709886BC5',
      END OF ZTODO,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ZTODO,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '0242AC1100021EE9B8A33F8D0AEBEBC5',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '0242AC1100021EE9B8A33F8D0AEBABC5',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '0242AC1100021EE9B8A33F8D0AECABC5',
      END OF ZTODO,
      BEGIN OF ZTODO_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0242AC1100021EE9B8A33F8D0AEE2BC5',
      END OF ZTODO_LOCK,
      BEGIN OF ZTODO_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0242AC1100021EE9B8A33F8D0AEE0BC5',
      END OF ZTODO_MESSAGE,
      BEGIN OF ZTODO_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '0242AC1100021EE9B8A33F8D0AEE4BC5',
      END OF ZTODO_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ZTODO,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZTODO,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '0242AC1100021EE9B8A33F8D0AEB0BC5' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZTODO' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF ZTODO,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA709890BC5',
 ADMINISTRATIVE_DATA            TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA709892BC5',
 CENTRAL_ADMIN_DATA             TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA709894BC5',
 DELETE_DRAFT_WHN_ACTIVE_DELETE TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA7098A2BC5',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA7098A0BC5',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA709896BC5',
 DURABLE_LOCK_CLEANUP_CLEANUP   TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA70989EBC5',
 DURABLE_LOCK_CLEANUP_DELETE    TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA709898BC5',
 DURABLE_LOCK_CLEANUP_FAIL_SAVE TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA70989CBC5',
 DURABLE_LOCK_CLEANUP_SUCC_SAVE TYPE /BOBF/DET_KEY VALUE '0242AC1100021EE9B8A33FA70989ABC5',
      END OF ZTODO,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 DRAFT_CONSISTENCY              TYPE /BOBF/OBM_GROUP_KEY VALUE '0242AC1100021EE9B8A33F8D0AEE8BC5',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ZTODO                          TYPE /BOBF/OBM_NODE_KEY VALUE '0242AC1100021EE9B8A33F8D0AEB4BC5',
 ZTODO_LOCK                     TYPE /BOBF/OBM_NODE_KEY VALUE '0242AC1100021EE9B8A33F8D0AEBCBC5',
 ZTODO_MESSAGE                  TYPE /BOBF/OBM_NODE_KEY VALUE '0242AC1100021EE9B8A33F8D0AEB8BC5',
 ZTODO_PROPERTY                 TYPE /BOBF/OBM_NODE_KEY VALUE '0242AC1100021EE9B8A33F8D0AEC8BC5',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ZTODO,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  TITLE                          TYPE STRING VALUE 'TITLE',
  STATUS                         TYPE STRING VALUE 'STATUS',
  ASSIGNEE                       TYPE STRING VALUE 'ASSIGNEE',
  DUEDATE                        TYPE STRING VALUE 'DUEDATE',
  CREATEDBY                      TYPE STRING VALUE 'CREATEDBY',
  CREATEDAT                      TYPE STRING VALUE 'CREATEDAT',
  CHANGEDBY                      TYPE STRING VALUE 'CHANGEDBY',
  CHANGEDAT                      TYPE STRING VALUE 'CHANGEDAT',
  AGE                            TYPE STRING VALUE 'AGE',
  OVERDUE                        TYPE STRING VALUE 'OVERDUE',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZTODO,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ZTODO,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '0242AC1100021EE9B8A33F8D0AEB6BC5',
      END OF ZTODO,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_STATUS_VARIABLE,
      BEGIN OF ZTODO,
 DRAFT_CONSISTENCY_STATUS       TYPE /BOBF/STA_VAR_KEY VALUE '0242AC1100021EE9B8A33F8D0AEE6BC5',
      END OF ZTODO,
    END OF SC_STATUS_VARIABLE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ZTODO,
 DURABLE_LOCK_CREATE_FOR_NEW    TYPE /BOBF/VAL_KEY VALUE '0242AC1100021EE9B8A33FA7098A4BC5',
      END OF ZTODO,
    END OF SC_VALIDATION .
endinterface.