@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kapselung'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_SQL_KAPSEL as select from /dmo/flight
{
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    
    seats_max - seats_occupied as seats_free
    
}
