@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Filter 1 ABB 120'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_C_FILTER1 as select from /DMO/I_Connection_R
{
    key AirlineID,
    key ConnectionID,
     min( _Flight.FlightDate) as FirstFlightDate,
     min( _Flight[OccupiedSeats > MaximumSeats ].FlightDate ) as UeberbuchterFlug


}
group by
    AirlineID,
    ConnectionID
