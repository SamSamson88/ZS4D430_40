extend view entity Z40_C_EMPLOYEEQUERYP with
 association [1..1] to I_Country as _ZZCountryZem
    on $projection.ZZCountryZEM = _ZZCountryZem.Country
{
     Employee.ZZTITLEZem,
     Employee.ZZCountryZEM,
     
     concat_with_space( Employee.FirstName, Employee.LastName, 1 ) as  ZZFullNameZem,
     
     _ZZCountryZem.IsEuropeanUnionMember as ZZEUBasedZem

}
