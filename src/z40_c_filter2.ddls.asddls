@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Filter2 Abbildung 121'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z40_C_FILTER2 as select from I_Currency
{
    key Currency,
    Decimals,
    CurrencyISOCode,
//    AlternativeCurrencyKey,
//    IsPrimaryCurrencyForISOCrcy,
    /* Associations */
    
//       _Text.CurrencyName as CurrencyNAME
       
//      _Text[   Language = 'E'].CurrencyName as CurrencyNameEN,
      _Text[1: Language = 'D'].CurrencyName as CurrencyNameDE
}
