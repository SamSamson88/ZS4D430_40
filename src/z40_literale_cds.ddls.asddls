@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Literale im Vergleich'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_LITERALE_CDS as select from /dmo/flight
{
    'Hello' as character1, // Typ CHAR
    '4711'  as character2, // TYPE NUMC
      1     as integer1,   // Typ INT1
     -1     as integer2,   // Typ INT1
     256    as integer3,   // Typ INT2
     32768  as intger4,    // Typ INT4
     1.5    as float1      // Typ FLTP
}
