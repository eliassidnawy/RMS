prompt --application/shared_components/files/plugin_dashboard_items_css
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
wwv_flow_imp.g_varchar2_table(1) := '626F6479207B0D0A20202020666F6E742D66616D696C793A202773665F70726F5F646973706C6179726567756C6172272C2073616E732D73657269663B0D0A7D0D0A0D0A2E742D4865616465722C202E742D466F6F746572207B0D0A2020646973706C61';
wwv_flow_imp.g_varchar2_table(2) := '793A206E6F6E652021696D706F7274616E743B0D0A7D0D0A0D0A2E742D426F6479207B0D0A20202D2D75742D626F64792D6D61696E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D626F64792D636F6E74656E742D70';
wwv_flow_imp.g_varchar2_table(3) := '616464696E672D793A203070783B0D0A20202D2D75742D626F64792D636F6E74656E742D70616464696E672D783A203070783B0D0A7D0D0A0D0A2E612D47562D666F6F7465722E6A732D737469636B795769646765742D746F67676C657B0D0A20202020';
wwv_flow_imp.g_varchar2_table(4) := '626F726465722D7261646975733A20312E3572656D3B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(73371039462577564)
,p_file_name=>'plugin-dashboard-items.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
