@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Case Unterscheidung'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_CASE_CDS as select from /dmo/customer
{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    title as Title,
    street as Street,
    postal_code as PostalCode,
    city as City,
    
             case  title
                   when 'Mr.' then 'Herr'
                   when 'Mrs.' then 'Frau'
              else   ' '
              end as title_de
   
    
}
