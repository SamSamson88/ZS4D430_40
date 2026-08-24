@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Mitarbeiter (Abfrage)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}    
define view entity Z40_C_EMPLOYEE_QUERY as select from z40_R_employee
{
    key EmployeeId,
    FirstName,
    LastName,
    BirthDate,
    EntryDate,
    DepartmentId,
    
    _Department.Description as DepartmentDescription,
    _Department._Assistent.LastName as AssisttantName,
    
    //      _Department._Assistant.LastName as AssistantName,
    
          concat_with_space( _Department._Assistent.FirstName,
                         _Department._Assistent.LastName, 1 )   as AssistantName,
          
        
          @EndUserText.label: 'EmployeeRole  (Übung 13)'
      
      case EmployeeId
         when _Department.HeadId then 'H'
         when _Department.AssistantId then 'A'
         else ''
      end as EmployeeRole,
      
//      Zusatzausgabe  (Kein Bestandteil einer Übung) 
         @Semantics.amount.currencyCode: 'CurrencyCode'
         AnnualSalary as AnnualSalary,
         CurrencyCode as CurrencyCode,
//      Zusatzausgabe Ende
      
      cast( 'USD' as /dmo/currency_code )  as CurrencyCodeUSD,
      
      @Semantics.amount.currencyCode: 'CurrencyCodeUSD'
      currency_conversion( amount => AnnualSalary,
                           source_currency => CurrencyCode,
                           target_currency => $projection.CurrencyCodeUSD ,
                           exchange_rate_date => $session.system_date, error_handling => 'SET_TO_NULL' )    as AnnualSalaryConverted,

      @EndUserText.label: 'Monthly Salary  (Übung 14)'
      @Semantics.amount.currencyCode: 'CurrencyCodeUSD'

      cast( (  cast( $projection.AnnualSalaryConverted as abap.fltp ) / 12.0 )  as  abap.curr( 10, 2 ) ) as MontlySalaryConverted,

      //       CurrencyCode,
      division ( dats_days_between( EntryDate, $session.system_date ), 365, 1 )    as CompanyAffiliation,
      
    
    /* Associations */
    _Department
}
