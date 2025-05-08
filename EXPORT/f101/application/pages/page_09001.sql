prompt --application/pages/page_09001
begin
--   Manifest
--     PAGE: 09001
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
 p_id=>9001
,p_name=>'Use APEX Components inside'
,p_alias=>'USE-APEX-COMPONENTS-INSIDE1'
,p_step_title=>'Use APEX Components inside'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#plugin-dashboard-items.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
':root {',
'    ---ats-color-black-400 : #8C8A96;',
'    --ats-color-black-600 : #525062;',
'}',
'',
'/*title for badges*/',
'.t-Region.DB-block01-planing { ',
' margin-bottom: 0 !important;',
' -webkit-margin-after: 0;',
' margin-block-end: 0;',
'}',
'',
'.t-Region.DB-block01-planing .t-Region-body{ ',
' padding-block-end: 0;',
'}',
'',
'.badge-title-with-icon.t-Form-fieldContainer{ ',
'    background-color: var(--ut-link-text-color);',
'    --ut-field-input-padding-x-offset: .25rem !important;',
'    -webkit-padding-before: .25rem !important;',
'    padding-block-start: .25rem !important;',
'    -webkit-padding-start: .5rem !important;',
'    padding-inline-start: .5rem !important;',
'    -webkit-padding-end: .5rem !important;',
'    padding-inline-end: .5rem !important;',
'    -webkit-padding-after: .25rem !important;',
'    padding-block-end: .25rem !important;',
'    -webkit-margin-end: 0;',
'    margin-inline-end: 0;',
'    -webkit-margin-start: 0;',
'    margin-inline-start: 0;',
'    border-radius: .5rem;',
'}',
'',
'.badge-title-with-icon .apex-item-icon.fa:before {font-size: 1.5rem; color: var(--u-color-13);}',
'.badge-title-with-icon .t-Form-labelContainer {display: flex; height: -webkit-fill-available;}',
'.badge-title-with-icon .t-Form-labelContainer .t-Form-label {font-size: 1rem; font-weight: bold;align-content: center; height: 100%; color: var(--u-color-13); padding-inline-start: .25rem; text-align: center;}',
'',
'.row-planing-title { margin-bottom: .5rem;}',
'',
'/*block for badges*/',
'.component-badge-block .t-Badges {',
'width: -webkit-fill-available;',
'}',
'',
'.component-badge-block .t-Badges-item {',
'width: 100%;',
'background-color: #ECEFF6;',
'border-radius: .5rem;',
'}',
'',
'.component-badge-block.green-bg .t-Badges-item {',
'width: 100%;',
'background-color: #EDF7ED;',
'border-radius: .5rem;',
'}',
'',
'.component-badge-block .t-Badge {',
'width: -webkit-fill-available;',
'flex-direction: column;',
'background-color: unset;',
'--ut-badge-padding-x: .25rem;',
'--ut-badge-padding-y: .25rem;',
'min-height: 6.8rem;',
'justify-content: space-evenly;',
'}',
'',
'.component-badge-block .t-Badge-label {color: var(--ats-color-black-400);}',
'.component-badge-block .t-Badge-value {font-size: 2.5rem; line-height: normal; color: var(--ats-color-black-600) ;}',
'',
'.component-badge-block  .a-TMV-footer { padding-block: .25rem;}',
''))
,p_step_template=>wwv_flow_imp.id(69817511991826002)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'27'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250505164010'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156938142055597702)
,p_plug_name=>unistr('Avancement Activit\00E9')
,p_region_name=>'avcActivite'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157432158541288812)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938142055597702)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('select ''Tourn\00E9es en attente'' as label, 2 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432201098288813)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432311019288814)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157432427399288815)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938142055597702)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('select ''Tourn\00E9es lanc\00E9es'' as label, 2 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432499257288816)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432587483288817)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157432696207288818)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938142055597702)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('select ''Tourn\00E9es termin\00E9es'' as label, 0 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432846014288819)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432956990288820)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6954278247404879598)
,p_plug_name=>unistr('Avancement Activit\00E9 Chart')
,p_parent_plug_id=>wwv_flow_imp.id(156938142055597702)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69829573963826010)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'#jetchart_jet {',
'  height: 100vh !important;',
'}',
'</style>'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83527264753948835)
,p_region_id=>wwv_flow_imp.id(6954278247404879598)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_format_scaling=>'auto'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>false
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(83527717090948835)
,p_chart_id=>wwv_flow_imp.id(83527264753948835)
,p_seq=>10
,p_name=>'Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 25 as value, 100 as max, ''label'' as label',
'FROM dual;'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156938268776597703)
,p_plug_name=>'Journalier'
,p_region_name=>'journalier'
,p_region_css_classes=>'DB-block01-planing'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157430359336288794)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_region_css_classes=>'component-badge-block'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>40
,p_plug_grid_row_css_classes=>'row-planing-value'
,p_query_type=>'SQL'
,p_plug_source=>unistr('select ''Tourn\00E9es en attente'' as label, 43 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157430397725288795)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157430492550288796)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157430622811288797)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_region_css_classes=>'component-badge-block'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('select ''Tourn\00E9es en attente'' as label, 2396 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157430846484288799)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157430953984288800)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157430756765288798)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_region_css_classes=>'component-badge-block'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('SELECT ''Tourn\00E9e en attente'' as label, 5657 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431021048288801)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431080223288802)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157431238833288803)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_region_css_classes=>'component-badge-block green-bg'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>70
,p_plug_grid_row_css_classes=>'row-planing-value'
,p_query_type=>'SQL'
,p_plug_source=>unistr('SELECT ''Lanc\00E9e'' as label, 3 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431278483288804)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431464374288805)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157431542418288806)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_region_css_classes=>'component-badge-block green-bg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('SELECT ''Lanc\00E9e'' as label, 152 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431722171288808)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431864302288809)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157431581550288807)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_region_css_classes=>'component-badge-block green-bg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('SELECT ''Lanc\00E9e'' as label, 357 as value from dual;')
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "VALUE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157431950740288810)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157432063321288811)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156938303186597704)
,p_plug_name=>'Ressources Actives'
,p_region_name=>'ressource'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>50
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156938577650597707)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938303186597704)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''22 mvt/h'' as mouvement_par_heure, ',
unistr('       ''Productivit\00E9 Cariste'' as label'),
'from dual;'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"ICON": "fa-cart-empty",',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "MOUVEMENT_PAR_HEURE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(156938701401597708)
,p_name=>'MOUVEMENT_PAR_HEURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOUVEMENT_PAR_HEURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(156938801526597709)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156939764288597718)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938303186597704)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83520710736948829)
,p_region_id=>wwv_flow_imp.id(156939764288597718)
,p_chart_type=>'dial'
,p_width=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>false
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(83521256366948829)
,p_chart_id=>wwv_flow_imp.id(83520710736948829)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>'select 49 as val, 80 as max from dual;'
,p_items_value_column_name=>'VAL'
,p_items_max_value=>'MAX'
,p_color=>'#4cd964'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156940185267597723)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938303186597704)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''146 prise/h'' as prise_par_heure, ',
unistr('       ''Productivit\00E9 Pr\00E9pareateur'' as label'),
'from dual;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg",',
  '"VALUE": "PRISE_PAR_HEURE"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(156940427162597725)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(156940572177597726)
,p_name=>'PRISE_PAR_HEURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRISE_PAR_HEURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156940606583597727)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(156938303186597704)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83516819618948822)
,p_region_id=>wwv_flow_imp.id(156940606583597727)
,p_chart_type=>'dial'
,p_width=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>false
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(83517369414948825)
,p_chart_id=>wwv_flow_imp.id(83516819618948822)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>'select 60 as val, 240 as max from dual;'
,p_items_value_column_name=>'VAL'
,p_items_max_value=>'MAX'
,p_color=>'#4cd964'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6954277145878879587)
,p_plug_name=>'Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69829573963826010)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_07'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156941859369597755)
,p_name=>'P9001_COMMANDES_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_prompt=>'Commandes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'row-planing-title'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_css_classes=>'badge-title-with-icon'
,p_item_icon_css_classes=>'fa-file-pointer'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156941987861597756)
,p_name=>'P9001_LIGNES_CMD_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_prompt=>'Lignes de commandes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_css_classes=>'badge-title-with-icon'
,p_item_icon_css_classes=>'fa-layout-modal-rows'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156947476834597741)
,p_name=>'P9001_PRODUCTIVITE_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156938303186597704)
,p_prompt=>unistr('Productivit\00E9')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156947550025597742)
,p_name=>'P9001_DISPONIBILITE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156938303186597704)
,p_prompt=>unistr('Disponibilit\00E9')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156954024616597744)
,p_name=>'P9001_COLIS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156938142055597702)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Colis'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Nb Colis;1,Nb Lignes Colis;2'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69966542528826057)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157430082939288807)
,p_name=>'P9001_COLIS_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(156938268776597703)
,p_prompt=>'COLIS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_css_classes=>'badge-title-with-icon'
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6954302196673879678)
,p_name=>'P9001_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6954277145878879587)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
