@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datumsverarbeitung Abbildung 139'
@Metadata.ignorePropagatedAnnotations: false
define view entity Z40_WAEHRUNG_CDS as select from /dmo/travel
{
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    
    cast( 'USD' as /dmo/currency_code) as currencycodeUSD,
   @Semantics.amount.currencyCode: 'CurrencyCode'
   currency_conversion(             amount => total_price,
                           source_currency => currency_code,
                           target_currency => $projection.currencycodeUSD,
                        exchange_rate_date => $session.system_date ) as total_price_eur,
                        
   currency_code         as CurrencyCode
    

}
