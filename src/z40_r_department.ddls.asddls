@AbapCatalog: {
    dataMaintenance: #RESTRICTED,
    viewEnhancementCategory: [ #PROJECTION_LIST ],
    extensibility: {
    dataSources: [ 'Department' ],
    elementSuffix: 'ZEM'
} }
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Abteilungs CDS'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_R_DEPARTMENT 
  as select from z40depment as Department
  association [0..*] to z40_R_employee as _Employee  on $projection.Id = _Employee.DepartmentId
  association [0..1] to z40_R_employee as _Head      on $projection.HeadId = _Head.EmployeeId
  association [1..1] to z40_R_employee as _Assistent on $projection.AssistantId = _Assistent.EmployeeId

{
  key id                    as Id,
      description           as Description,
      head_id               as HeadId,
      assistant_id          as AssistantId,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Employee,
      _Head,
      _Assistent

}
