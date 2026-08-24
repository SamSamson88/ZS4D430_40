@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Union'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_UNION_ALL as select from /DMO/I_Carrier
{
    @EndUserText.label: 'Kategorie'
    key 'Airline' as Type,
    key AirlineID as ID,
    Name
    
} 

where CurrencyCode = 'GBP'

union all

select from /DMO/I_Airport
{
   
//    @EndUserText.label: 'Kategorie'
    key 'Airport' as Type,
    key AirportID as ID,
    Name
}

where City = 'London'
