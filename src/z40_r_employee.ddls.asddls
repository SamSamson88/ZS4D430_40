@AbapCatalog: {
    dataMaintenance: #RESTRICTED,
    viewEnhancementCategory: [ #PROJECTION_LIST ],
    extensibility: {
    dataSources: [ 'Employee' ],
    elementSuffix: 'ZEM'
} }
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Mitarbeiter CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #D,
    sizeCategory: #M,
    dataClass: #MASTER
}

define view entity z40_R_employee
  as select from z40employ as Employee

  association [1..1] to Z40_R_DEPARTMENT as _Department on $projection.DepartmentId = _Department.Id
{
  key employee_id           as EmployeeId,
      first_name            as FirstName,
      last_name             as LastName,
      @EndUserText.label: 'Geburtsdatum'
      @EndUserText.quickInfo: 'Das ist das Geburtsdatum eines Mitarebiters'
      birth_date            as BirthDate,
      entry_date            as EntryDate,
      department_id         as DepartmentId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      annual_salary         as AnnualSalary,
      @EndUserText.label: 'Währungsschlüssel'
      currency_code         as CurrencyCode,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Department

}
