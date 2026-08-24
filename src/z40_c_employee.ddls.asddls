@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee (Consumption)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{ 
    serviceQuality: #D,
    sizeCategory: #M,
    dataClass: #MASTER
}
define view entity Z40_C_EMPLOYEE as select from z40_R_employee
{
    key EmployeeId,
    FirstName,
    LastName,
    BirthDate,
    EntryDate,
    DepartmentId,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    AnnualSalary,
    CurrencyCode,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    _Department._Head.LastName as Manager,
    _Department._Assistent.LastName  as SecondManager


}
