CLASS zcl_40_parameters DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_40_parameters IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  SELECT
      FROM z40_c_employeequeryp(
           p_target_curr = 'EUR'
*           p_date        = @sy-datum
                     )
    FIELDS employeeid,
           firstname,
           lastname,
           departmentid,

           departmentdescription,
           assistantname,
           \_department\_head-lastname AS headname,

           MontlySalaryConverted,
           CurrencyCode,
           CompanyAffiliation

    INTO TABLE @DATA(result).

    out->write( result ).

  ENDMETHOD.
ENDCLASS.

