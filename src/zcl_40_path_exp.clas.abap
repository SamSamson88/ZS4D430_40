CLASS zcl_40_path_exp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_40_PATH_EXP IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT
    FROM z40_c_employee_query
    FIELDS employeeid,
           firstname,
           lastname,
           departmentid,
           DepartmentDescription,
           AssisttantName,
           \_Department\_Head-LastName AS HeadName ORDER BY EmployeeId


    INTO TABLE @DATA(result).

    out->write( result ).

  ENDMETHOD.
ENDCLASS.
