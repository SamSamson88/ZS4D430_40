CLASS zcl_40_join_union DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_40_join_union IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

** INNER JOIN

*   SELECT FROM /dmo/carrier AS a
*   INNER JOIN /dmo/connection as c
*         ON a~carrier_id = c~carrier_id
*
*   FIELDS a~carrier_id,
*          connection_id AS carrier_name,
*          name,
*          airport_from_id,
*          airport_to_id
*
*    INTO TABLE @DATA(result).
*
*    out->write( result ).

** Union

     SELECT FROM /dmo/i_carrier

      FIELDS 'Airline' as Type,
              AirlineID as ID,
              NAME

     UNION ALL

     SELECT FROM /dmo/i_airport

      FIELDS 'Airport' as Type,
              AirportID as ID,
              NAME

      INTO TABLE @DATA(result).

       out->write( result ).










  ENDMETHOD.
ENDCLASS.
