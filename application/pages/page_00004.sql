prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'testPage20250514'
,p_alias=>'TESTPAGE20250514'
,p_step_title=>'testPage20250514'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250514110814'
);
wwv_flow_imp.component_end;
end;
/
