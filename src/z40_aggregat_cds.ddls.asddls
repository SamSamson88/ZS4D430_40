@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregationen'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_AGGREGAT_CDS as select from /dmo/connection
{
    key carrier_id as CarrierId,
//    key connection_id as ConnectionId,
//    airport_from_id as AirportFromId,
//    airport_to_id as AirportToId,
//    departure_time as DepartureTime,
//    arrival_time as ArrivalTime,
//    distance as Distance,
//    distance_unit as DistanceUnit,


       
             max( distance ) as Maximum,
             min( distance ) as Minimum,
             sum( distance ) as Total,
             count( * ) as count_all,
             count( distinct airport_from_id ) as count_dist,
             avg( distance as abap.fltp ) as average

}
group by
    carrier_id
//    connection_id,
//    airport_from_id
//    airport_to_id,
//    departure_time,
//    arrival_time,
//    distance,
//    distance_unit



