CLASS zcl_40_intro DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_40_intro IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA var TYPE z40employ.

  DATA name TYPE zcl_40_vehicle=>fs_attribute.

  DATA struct TYPE z40s_person_deep.

  DATA preis TYPE /dmo/flight_price.

  preis = '123456789012345.00'.

  SELECT FROM /LRN/S4D430_IND_CDS_View
     FIELDS *
       INTO TABLE @DATA(result).

  out->write( preis ).

  ENDMETHOD.
ENDCLASS.
