prompt --application/pages/page_09000
begin
--   Manifest
--     PAGE: 09000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'S1'
);
wwv_flow_imp_page.create_page(
 p_id=>9000
,p_name=>'Use APEX Components inside'
,p_alias=>'USE-APEX-COMPONENTS-INSIDE'
,p_step_title=>'Use APEX Components inside'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#plugin-dashboard-items.css'
,p_step_template=>wwv_flow_imp.id(69817511991826002)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'23'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250429151540'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73431366183648917)
,p_plug_name=>unistr('Avancement Activit\00E9')
,p_region_name=>'avcActivite'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P9000_TYPE'
,p_plug_display_when_cond2=>'avcActivite'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73431196220648915)
,p_plug_name=>'Tournee Infos'
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69836676308826012)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('select ''Tourn\00E9es en attentes'', 2 from dual')
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(73431234849648916)
,p_region_id=>wwv_flow_imp.id(73431196220648915)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>false
,p_title_column_name=>unistr('''TOURN\00C9ESENATTENTES''')
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'2'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6870771471532930813)
,p_plug_name=>unistr('Avancement Activit\00E9 Chart')
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(73450143984733754)
,p_region_id=>wwv_flow_imp.id(6870771471532930813)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(73451845469733755)
,p_chart_id=>wwv_flow_imp.id(73450143984733754)
,p_seq=>10
,p_name=>'Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    25 AS VALUE,',
'    100 AS MAX,',
'    ''label'' AS LABEL',
'FROM',
'    DUAL;'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73431492904648918)
,p_plug_name=>'Journalier'
,p_region_name=>'journalier'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P9000_TYPE'
,p_plug_display_when_cond2=>'journalier'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73431527314648919)
,p_plug_name=>'Ressources Actives'
,p_region_name=>'ressource'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>50
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P9000_TYPE'
,p_plug_display_when_cond2=>'ressource'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73431801778648922)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
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
  '"LABEL": "\u0026LABEL.",',
  '"VALUE": "MOUVEMENT_PAR_HEURE",',
  '"ICON": "fa-cart-empty",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73431925529648923)
,p_name=>'MOUVEMENT_PAR_HEURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOUVEMENT_PAR_HEURE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73432025654648924)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73432988416648933)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(73433028126648934)
,p_region_id=>wwv_flow_imp.id(73432988416648933)
,p_chart_type=>'dial'
,p_width=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(73433164319648935)
,p_chart_id=>wwv_flow_imp.id(73433028126648934)
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
 p_id=>wwv_flow_imp.id(73433409395648938)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
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
  '"VALUE": "PRISE_PAR_HEURE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73433651290648940)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73433796305648941)
,p_name=>'PRISE_PAR_HEURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRISE_PAR_HEURE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73433830711648942)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(73433975417648943)
,p_region_id=>wwv_flow_imp.id(73433830711648942)
,p_chart_type=>'dial'
,p_width=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(73434086870648944)
,p_chart_id=>wwv_flow_imp.id(73433975417648943)
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
 p_id=>wwv_flow_imp.id(6870770370006930802)
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
 p_id=>wwv_flow_imp.id(73431040357648914)
,p_name=>'P9000_COLIS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(73431655657648920)
,p_name=>'P9000_PRODUCTIVITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73431527314648919)
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
 p_id=>wwv_flow_imp.id(73431728848648921)
,p_name=>'P9000_DISPONIBILITE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73431527314648919)
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
 p_id=>wwv_flow_imp.id(6870779962293930848)
,p_name=>'P9000_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
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
