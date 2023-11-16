CLASS zrap610_cl_http_handler_001 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_http_service_extension .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrap610_cl_http_handler_001 IMPLEMENTATION.


  METHOD if_http_service_extension~handle_request.

    response->set_text( |<!DOCTYPE html><html><head><title>ZRAP610 HTTP Service</title></head><body><h3>Response from ABAP Server</h3><p>HTTP Handler zrap610_cl_http_handler_001 called!</p></body></html>| ).

  ENDMETHOD.
ENDCLASS.
