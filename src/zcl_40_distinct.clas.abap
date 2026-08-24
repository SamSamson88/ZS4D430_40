CLASS zcl_40_distinct DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_40_DISTINCT IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

** ORDER BY
*
*    SELECT
*    FROM /dmo/customer
*    FIELDS customer_id,
*           last_name,
*           first_name
*
*    ORDER BY first_name
*
*
*    INTO TABLE @DATA(result).
*
*    out->write( result ).

** DISTINCT
*
*    SELECT
*    FROM /dmo/customer
*
*    FIELDS DISTINCT
*           customer_id,
*           last_name,               " nur last_name Keine doppelten Einträge
*           first_name
*
*    INTO TABLE @DATA(result).
*
*    out->write( result ).

** Aggregation

*   SELECT
*     FROM /dmo/connection
*    FIELDS
*             MAX( distance ) AS Maximum,
*             MIN( distance ) AS Minimum,
*             SUM( distance ) AS Total,
*             Count( * ) AS count_all,
*             count( distinct airport_from_id ) AS count_dist,
*             AVG( distance ) AS average
*
*    INTO TABLE @DATA(result).
*
*    out->write( result ).


   SELECT
     FROM /dmo/connection
    FIELDS
             carrier_id,

             MAX( distance ) AS Maximum,
             MIN( distance ) AS Minimum,
             SUM( distance ) AS Total,
             Count(*) AS count_all,
             count( distinct airport_from_id ) AS count_dist,
             AVG( distance ) AS average


     GROUP BY carrier_id

    INTO TABLE @DATA(result).

    out->write( result ).







  ENDMETHOD.
ENDCLASS.
