prompt --application/shared_components/logic/application_items/g_act_anterieures
begin
--   Manifest
--     APPLICATION ITEM: G_ACT_ANTERIEURES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(83740378781330144)
,p_name=>'G_ACT_ANTERIEURES'
,p_protection_level=>'N'
,p_version_scn=>46962699
);
wwv_flow_imp.component_end;
end;
/
