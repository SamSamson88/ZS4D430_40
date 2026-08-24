@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kapselung'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_Numerische_Funktion as select from /dmo/flight
{
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    
    seats_max - seats_occupied as seats_free,
    
    div( seats_occupied * 100, seats_max ) as percentage_int,

                   division( seats_occupied * 100, seats_max, 2 ) as percentage_dec
    
}   
