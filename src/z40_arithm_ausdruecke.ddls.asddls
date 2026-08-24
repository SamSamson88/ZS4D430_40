@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Arithmetische Ausdrücke'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_ARITHM_AUSDRUECKE as select from /dmo/flight
{
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
     
    seats_max - seats_occupied as seats_free,
    
      ( cast( seats_occupied as abap.fltp )
          * 100.0
      ) / cast( seats_max as abap.fltp ) as percentage_fltp
      
}
