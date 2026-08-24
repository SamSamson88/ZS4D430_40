@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Weiteres Beispiel Union'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_UNION_BSP2 as select from /dmo/customer as c
         inner join /dmo/travel as t
         on c.customer_id = t.customer_id
{
 
    key c.customer_id as Id,
    key 'C' as type,
       
         concat_with_space( c.last_name, c.first_name, 1 ) as name,
         
      @EndUserText.label: 'Anzahl der Buchungen'
       count(distinct t.travel_id )  as Travelscount
}
group by
    c.customer_id,
    c.last_name,
    c.first_name
     

union all

select from /dmo/agency as a
    inner join /dmo/travel as t
      on a.agency_id = t.agency_id
{
         
   key a.agency_id as Id,
   key 'A'   as Type,    
       a.name,
       
//      @EndUserText.label: 'Anzahl der Buchungen'
      count(distinct t.travel_id )  as Travelscount

}
group by
    a.agency_id,
    a.name
