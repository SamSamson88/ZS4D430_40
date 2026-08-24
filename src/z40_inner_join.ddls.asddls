@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Inner Join CDS'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_INNER_JOIN as select from /dmo/carrier as a
                                      inner join /dmo/connection as c
                                      on a.carrier_id = c.carrier_id
{
    
        key c.carrier_id,
        key c.connection_id,
        a.name as CarrierName,
        c.airport_from_id,
        c.airport_to_id
    
}
