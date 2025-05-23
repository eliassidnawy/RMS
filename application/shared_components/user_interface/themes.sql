prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(70059535414826180)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(82875688123831883)
,p_default_dialog_template=>wwv_flow_imp.id(69800555611825998)
,p_error_template=>wwv_flow_imp.id(82887331987831888)
,p_printer_friendly_template=>wwv_flow_imp.id(69820932209826003)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(82887331987831888)
,p_default_button_template=>wwv_flow_imp.id(69969320835826062)
,p_default_region_template=>wwv_flow_imp.id(69896116805826029)
,p_default_chart_template=>wwv_flow_imp.id(69896116805826029)
,p_default_form_template=>wwv_flow_imp.id(69896116805826029)
,p_default_reportr_template=>wwv_flow_imp.id(69896116805826029)
,p_default_tabform_template=>wwv_flow_imp.id(69896116805826029)
,p_default_wizard_template=>wwv_flow_imp.id(69896116805826029)
,p_default_menur_template=>wwv_flow_imp.id(69908543530826032)
,p_default_listr_template=>wwv_flow_imp.id(69896116805826029)
,p_default_irr_template=>wwv_flow_imp.id(69886341475826026)
,p_default_report_template=>wwv_flow_imp.id(82912724906016754)
,p_default_label_template=>wwv_flow_imp.id(69966808032826059)
,p_default_menu_template=>wwv_flow_imp.id(69970953369826063)
,p_default_calendar_template=>wwv_flow_imp.id(69971055498826064)
,p_default_list_template=>wwv_flow_imp.id(69964906872826057)
,p_default_nav_list_template=>wwv_flow_imp.id(69955961717826054)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(69955961717826054)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(69954167643826053)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(69832353272826011)
,p_default_dialogr_template=>wwv_flow_imp.id(69829573963826010)
,p_default_option_label=>wwv_flow_imp.id(69966808032826059)
,p_default_required_label=>wwv_flow_imp.id(69968102519826060)
,p_default_navbar_list_template=>wwv_flow_imp.id(69956941490826054)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>74
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
