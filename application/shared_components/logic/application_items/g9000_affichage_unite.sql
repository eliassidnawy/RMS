prompt --application/shared_components/logic/application_items/g9000_affichage_unite
begin
--   Manifest
--     APPLICATION ITEM: G9000_AFFICHAGE_UNITE
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
 p_id=>wwv_flow_imp.id(84939972889970491)
,p_name=>'G9000_AFFICHAGE_UNITE'
,p_protection_level=>'N'
,p_version_scn=>46961927
);
wwv_flow_imp.component_end;
end;
/
