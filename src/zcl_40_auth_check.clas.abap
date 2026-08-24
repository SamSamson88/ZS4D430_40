CLASS zcl_40_auth_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_40_AUTH_CHECK IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  AUTHORITY-CHECK OBJECT 'Z40DPMNT'
        ID 'Z40DPMNT' FIELD 'ADMIN'
        ID 'ACTVT'    FIELD '03'.

  IF sy-subrc = 0.
   out->write( 'Ok' ).
  ELSE.
  out->write( 'Keine Berechtigung' ).
  ENDIF.

  AUTHORITY-CHECK OBJECT 'Z40DPMNT'
        ID 'Z40DPMNT' FIELD 'SALE'
        ID 'ACTVT'    FIELD '03'.

  IF sy-subrc = 0.
   out->write( 'Ok' ).
  ELSE.
  out->write( 'Keine Berechtigung' ).
  ENDIF.


  ENDMETHOD.
ENDCLASS.
