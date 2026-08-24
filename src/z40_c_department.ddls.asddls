@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Abteilung Consumption'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_C_DEPARTMENT as select from Z40_R_DEPARTMENT
{
    key Id,
    Description,
    HeadId,
    AssistantId,
//    CreatedBy,
//    CreatedAt,
//    LocalLastChangedBy,
//    LocalLastChangedAt,
//    LastChangedAt,
//    /* Associations */
//    _Assistent,
//    _Employee
//    _Head
    max(_Employee.BirthDate) as youngstar
}
group by
    Id,
    Description,
    HeadId,
    AssistantId



