prompt --application/shared_components/files/button_custom_min_css
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E742D427574746F6E7B666F6E742D7765696768743A3730307D2E62746E2D7374647B6D696E2D77696474683A3772656D3B2D7765626B69742D6D617267696E2D61667465723A303B6D617267696E2D626C6F636B2D656E643A307D2E726F756E642D62';
wwv_flow_imp.g_varchar2_table(2) := '746E7B626F726465722D7261646975733A766172282D2D6163742D6C617267652D726F756E642D636F726E6572297D2E63616E63656C2D62746E7B6261636B67726F756E642D636F6C6F723A7472616E73706172656E743B626F726465723A303B626F78';
wwv_flow_imp.g_varchar2_table(3) := '2D736861646F773A6E6F6E657D2E7072696D6172792D62746E2C2E7365636F6E646172792D62746E7B6261636B67726F756E642D636F6C6F723A766172282D2D752D636F6C6F722D34297D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74265397182319299)
,p_file_name=>'button-custom.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
