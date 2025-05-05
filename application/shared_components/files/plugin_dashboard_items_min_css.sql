prompt --application/shared_components/files/plugin_dashboard_items_min_css
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
,p_default_owner=>'S1'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '626F64797B666F6E742D66616D696C793A2273665F70726F5F646973706C6179726567756C6172222C73616E732D73657269667D2E742D466F6F7465722C2E742D4865616465727B646973706C61793A6E6F6E6521696D706F7274616E747D2E742D426F';
wwv_flow_imp.g_varchar2_table(2) := '64797B2D2D75742D626F64792D6D61696E2D6261636B67726F756E642D636F6C6F723A236666663B2D2D75742D626F64792D636F6E74656E742D70616464696E672D793A3070783B2D2D75742D626F64792D636F6E74656E742D70616464696E672D783A';
wwv_flow_imp.g_varchar2_table(3) := '3070787D2E612D47562D666F6F7465722E6A732D737469636B795769646765742D746F67676C657B626F726465722D7261646975733A312E3572656D7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(73371354794578507)
,p_file_name=>'plugin-dashboard-items.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
