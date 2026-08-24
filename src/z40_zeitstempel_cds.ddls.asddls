@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datumsverarbeitung Abbildung 139'
@Metadata.ignorePropagatedAnnotations: false
define view entity Z40_Zeitstempel_CDS as select from /dmo/travel
{
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,

    tstmp_to_dats( cast( lastchangedat as abap.dec( 15,0 )  ),
                   cast( 'EST' as abap.char( 6 ) ),
                   cast( '001' as abap.clnt), 'FAIL' ) as date_est



    

}
