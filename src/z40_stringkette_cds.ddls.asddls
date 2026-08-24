@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Case Unterscheidung'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_STRINGKETTE_CDS as select from /dmo/customer
{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    title as Title,
    street as Street,
    postal_code as PostalCode,
    city as City,
    

       concat( street, concat_with_space( ',',
                       concat_with_space(  postal_code,
                                           upper( city ), 1 ), 1 ) ) as adresse_func
            
   
    
}
