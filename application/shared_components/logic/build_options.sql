prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69792229704825969)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>42803025
);
wwv_flow_imp.component_end;
end;
/
