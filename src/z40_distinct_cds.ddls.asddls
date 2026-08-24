@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Distinct Abbildung 158'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_DISTINCT_CDS as select distinct from /dmo/connection
{

    airport_from_id as AirportFromId,

    distance_unit as DistanceUnit
}
