CLASS zcl_40_parameter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_40_PARAMETER IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(today) = cl_abap_context_info=>get_system_date(  ).
*  DATA(language2) = cl_abap_context_info=>get_user_language_iso_format(  ).


    SELECT
    FROM z40_parameters(  beginwithflightdate = @today,
                                Language = 'D' )

    FIELDS ConnectionID, CurrencNam, FlightDate, language_1, FirstFlightDate_1, FreeOccupied_1, MaximumSeats

    INTO TABLE @DATA(result).

    out->write( result ).




  ENDMETHOD.
ENDCLASS.
