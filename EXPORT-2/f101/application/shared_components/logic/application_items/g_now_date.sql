prompt --application/shared_components/logic/application_items/g_now_date
begin
--   Manifest
--     APPLICATION ITEM: G_NOW_DATE
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
 p_id=>wwv_flow_imp.id(84176134630146123)
,p_name=>'G_NOW_DATE'
,p_protection_level=>'N'
,p_version_scn=>46474578
);
wwv_flow_imp.component_end;
end;
/
