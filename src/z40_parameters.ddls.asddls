@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pramater benutzen'
@Metadata.ignorePropagatedAnnotations: false
define view entity Z40_PARAMETERS
  with parameters
  
   Language : spras,
   BeginWithFlightDate : /dmo/flight_date
   
    as select from Z40_PARAMETERS_USE(
       
        FreeOccupied : 'X',
        
        DemoCurrency : 'EUR',
        
        Language : $parameters.Language,
        
        FirstFlightDate:   $parameters.BeginWithFlightDate )
    
{
    key AirlineID,
    key ConnectionID,
    key FlightDate,
    MaximumSeats,
    OccupiedSeats,
    Targetcurrency,
    FreeOccupied_1,
    Language_1,
    FirstFlightDate_1,
    FreeSeats,
    PriceConverted,
    CurrencNam
}
