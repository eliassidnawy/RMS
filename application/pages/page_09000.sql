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
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp_page.create_page(
 p_id=>9000
,p_name=>'Use APEX Components inside'
,p_alias=>'USE-APEX-COMPONENTS-INSIDE'
,p_step_title=>'Use APEX Components inside'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#plugin-dashboard-items.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
':root {',
'    --ats-color-black-400 : #8C8A96;',
'    --ats-color-black-600 : #525062;',
'}',
'',
'.t-Form-fieldContainer--floatingLabel .apex-item-display-only {',
'    display: none;',
'}',
'',
'',
'/*title for badges*/',
'.t-Region.DB-block01-planing { ',
' margin-bottom: 0 !important;',
' -webkit-margin-after: 0;',
' margin-block-end: 0;',
'}',
'',
'.t-Region.DB-block01-planing .t-Region-body , .t-Region.DB-block02-Avance .t-Region-body{ ',
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
'.badge-title-with-icon .t-Form-inputContainer{height: 3rem;}',
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
'justify-content: space-evenly;',
'}',
'',
'',
'.component-badge-block.align-left .t-Badge {align-items: start !important; padding-left: 12px; padding-right: 12px}',
'',
'.component-badge-block.size-medium .t-Badge {',
'min-height: 6.6rem;',
'}',
'',
'.component-badge-block.size-huge .t-Badge {',
'min-height: 8rem;',
'}',
'',
'.component-badge-block.size-small .t-Badge {',
'min-height: 5.5rem;',
'}',
'',
'.component-badge-block .t-Badge-label {color: var(--ats-color-black-400);}',
'.component-badge-block .t-Badge-value {font-size: 2.5rem; line-height: normal; color: var(--ats-color-black-600) ;}',
'.component-badge-block  .a-TMV-footer { padding-block: .25rem;}',
'',
'',
'/* Style the background arc */',
'.t-Region.DB-block02-Avance{',
'    -webkit-margin-after: 0;',
'    margin-block-end: 0;',
'}',
'.row.Block-chart{align-items: center;}',
'',
'#gauge-segmented path{',
'    stroke-dasharray: 3;',
'    stroke-dashoffset: 4;',
'    stroke-linecap: butt;',
'    stroke: rgb(215, 215, 215);',
'    stroke-width: 36;',
'}',
'',
'#gauge-segmented path:last-of-type {',
'    stroke-dasharray: 3;',
'    stroke-dashoffset: 4;',
'    stroke-linecap: butt;',
'    stroke: rgb(57, 126, 254);',
'    stroke-width: 36;',
'}',
'',
'#gauge-segmented svg{',
'overflow: visible;',
'}',
'',
'#gauge-segmented{',
'padding: 20px;',
'}',
'',
'.t-Region.MeterGaugeStroke{',
'padding: 2rem;    ',
'}',
'',
'.dashboard-toggle-tab {margin-bottom: .5rem;}',
'.dashboard-toggle-tab .t-Form-labelContainer--hiddenLabel {display: none;}',
'.dashboard-toggle-tab .t-Form-inputContainer.col-2 {display: flex; max-width: -webkit-fill-available;}',
'.dashboard-toggle-tab .t-Form-inputContainer .t-Form-itemWrapper {width:-webkit-fill-available;}',
'.dashboard-toggle-tab.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input:checked + label {',
'    --a-button-background-color: #01241a;',
'    --a-button-text-color: white;',
'    --a-button-hover-background-color: #4D6861;',
'    --a-button-hover-text-color: white;',
'    --a-button-active-background-color: #01241a;',
'    --a-button-active-text-color: var(--a-button-hover-text-color);',
'    --a-button-focus-background-color: var(--a-button-hover-background-color);',
'    --a-button-focus-text-color: var(--a-button-hover-text-color);',
'    border-radius: 2rem;',
'    border-top-right-radius: 2rem !important;',
'    border-bottom-right-radius: 2rem !important;',
'}',
'',
'.dashboard-toggle-tab.t-Form-fieldContainer--radioButtonGroup .apex-item-grid .apex-item-grid-row:only-child .apex-item-option label {',
'    width: fit-content;',
'    border-top-right-radius: 2rem;',
'    border-bottom-right-radius: 2rem;',
'    border-radius: 2rem;',
'}',
'',
'.dashboard-toggle-tab.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label{',
'    border-color: transparent;',
'    box-shadow: none;',
'}',
'',
'.dashboard-toggle-tab.t-Form-fieldContainer--radioButtonGroup .apex-item-grid .apex-item-grid-row {',
'    display: flex;',
'    border: thin solid #01241a;',
'    width: fit-content;',
'    border-radius: 2rem;',
'    justify-self: end;',
'    background-color: #e6e9e8;',
'    padding: 2px;',
'    }',
'',
'.align-right .t-Form-fieldContainer--radioButtonGroup .apex-item-grid .apex-item-grid-row , .align-right { justify-content: flex-end;}',
'.align-right .t-Form-inputContainer{width: 100%; max-width: 100% !important;}',
'',
'@media (max-width: 639px) {',
'    .dashboard-toggle-tab.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc .apex-item-option{',
'    width: fit-content !important;',
'    }',
'    .component-badge-block.size-huge .t-Badge {',
'    min-height: 7.5rem;',
'    }',
'    #gauge-segmented {',
'    margin-bottom: 1.5rem;',
'    }',
'    #dashboard-c--2 .bida-item-html {',
'    height: 650px;',
'    }',
'}',
'',
'/*gestion resource*/',
'.row-indicator-label{background-color: var(--u-color-15-contrast); border-radius: .5rem; margin-bottom: 1rem; border: solid thin #ecf1f0;}',
'.component-indicator-label .t-Form-inputContainer .t-Form-itemWrapper , .component-indicator-label .t-Form-labelContainer { min-height: 1.25rem; text-align: center;}',
'.component-indicator-label .t-Form-labelContainer .t-Form-label{',
'    -webkit-padding-before: 0;',
'    padding-block-start: 0;',
'    -webkit-padding-after: 0;',
'    padding-block-end: 0;',
'    align-self: anchor-center;',
'    color: var(--ats-color-black-600);',
'    font-size: 1rem;',
'}',
'',
'.border-right {border-right:solid thin #CCD4D2;}',
'.component-badge-resource .t-Badge , .component-badge-resource.t-Badges .t-Badges-item {width: -webkit-fill-available;}',
'.component-badge-resource .t-Badge {',
'  display: grid;',
'  grid-template-columns: auto 1fr;',
'  grid-template-rows: auto auto;',
'  gap: 0.25rem 1.5rem;',
'  align-items: center;',
'  --ut-badge-padding-y: .75rem;',
'  --ut-badge-padding-x: 1rem;',
'  background-color: var(--u-color-4);',
'  border-radius: .5rem;',
'}',
'',
'.component-badge-resource .t-Badge .t-Badge-icon {',
'  grid-column: 1;',
'  grid-row: 1 / span 2;',
'  padding: .5rem;',
'  font-size: 2.5rem !important; /* adjust as needed */',
'  color: var(--u-color-14);',
'}',
'',
'.component-badge-resource .t-Badge .t-Badge-value {',
'  grid-column: 2;',
'  grid-row: 1;',
'  font-size: 2.5rem; ',
'  line-height: normal;',
'  color: var(--u-color-14);',
'  text-align: left;',
'}',
'',
'.component-badge-resource .t-Badge .t-Badge-label {',
'  grid-column: 2;',
'  grid-row: 2;',
'  text-align: left;',
'  color: var(--u-color-14);',
'}',
'',
'.remove-badge-footer .a-TMV-footer{display: none !important;}',
'.align-content-center{align-content: center;}',
'',
'.my-rounded-gauge .oj-statusmetergauge-horizontal-fit {height: 2rem;}',
'',
'.my-rounded-gauge text{',
'  font-size: 1.25rem;',
'  fill: white;',
'}',
'.my-rounded-gauge line{',
'  stroke-dasharray: 3px;',
'  stroke-width: 1;',
'}',
'',
'.indicator-label-container .t-Form-inputContainer {',
'    justify-content: end;',
'    padding-inline-start: 0;',
'    padding-inline-end: 0;',
'    padding-block-start: 0;',
'    border-right: dashed 1px black;',
'    }',
'',
'.indicator-label-meter {',
'    padding: .25rem 1rem;',
'    background-color: #525062;',
'    font-weight: normal;',
'    border-radius: .5rem 0 0 .5rem;',
'    color: white;',
'}'))
,p_step_template=>wwv_flow_imp.id(69817511991826002)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'27'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250514105432'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73431366183648917)
,p_plug_name=>unistr('Avancement Activit\00E9')
,p_region_name=>'avcActivite'
,p_region_css_classes=>'DB-block02-Avance'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P9000_TYPE'
,p_plug_display_when_cond2=>'avcActivite'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73925382669340027)
,p_plug_name=>unistr('Tourn\00E9es en attente')
,p_region_name=>'tour_a'
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_css_classes=>'component-badge-block size-huge align-left'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE',
'        WHEN :P9000_UNITE_AFFICHAGE = ''C'' THEN -- COLIS',
'            CASE',
'                WHEN :G_ACT_ANTERIEURES = ''N'' THEN (',
'                    (SELECT COALESCE(SUM(NUMBER_UP_ORDERED),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''A''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) + ',
'                    (SELECT COALESCE(SUM(NUMBER_UP_REMAINING),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''))',
'                )',
'                WHEN :G_ACT_ANTERIEURES = ''Y'' THEN (',
'                    (SELECT COALESCE(SUM(NUMBER_UP_ORDERED),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''A''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) + ',
'                    (SELECT COALESCE(SUM(NUMBER_UP_REMAINING),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''))',
'                )',
'            END',
'        WHEN :P9000_UNITE_AFFICHAGE = ''L'' THEN -- LISTES',
'            CASE',
'                WHEN :G_ACT_ANTERIEURES = ''N'' THEN (',
'                    (SELECT COALESCE(SUM(NUMBER_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''A''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) + ',
'                    (SELECT COALESCE(SUM(NUMBER_REMAINING_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''))',
'                )',
'                WHEN :G_ACT_ANTERIEURES = ''Y'' THEN (',
'                    (SELECT COALESCE(SUM(NUMBER_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''A''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) + ',
'                    (SELECT COALESCE(SUM(NUMBER_REMAINING_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''))',
'                )',
'            END        ',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u003Cspan style=\"color:red\"\u003ETourn\u00E9es en attente\u003C\/span\u003E",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73925535147340029)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73925651527340030)
,p_plug_name=>unistr('Tourn\00E9es lanc\00E9es')
,p_region_name=>'tour_l'
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_css_classes=>'component-badge-block size-huge align-left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE',
'        WHEN :P9000_UNITE_AFFICHAGE = ''C'' THEN -- COLIS',
'            CASE',
'                WHEN :G_ACT_ANTERIEURES = ''N'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_UP_ORDERED) - SUM(NUMBER_UP_REMAINING),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'                WHEN :G_ACT_ANTERIEURES = ''Y'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_UP_ORDERED) - SUM(NUMBER_UP_REMAINING),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                      AND SITE_ID = :G_SITE',
'                      AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'            END',
'        WHEN :P9000_UNITE_AFFICHAGE = ''L'' THEN -- LISTES',
'            CASE',
'                WHEN :G_ACT_ANTERIEURES = ''N'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_LISTS) - SUM(NUMBER_REMAINING_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'                WHEN :G_ACT_ANTERIEURES = ''Y'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_LISTS) - SUM(NUMBER_REMAINING_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''L''',
'                      AND SITE_ID = :G_SITE',
'                      AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'            END        ',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u003Cspan style=\"color:orange\"\u003ETourn\u00E9es lanc\u00E9es\u003C\/span\u003E",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73925811611340032)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73925920335340033)
,p_plug_name=>unistr('Tourn\00E9es termin\00E9es')
,p_region_name=>'tour_t'
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_css_classes=>'component-badge-block size-huge align-left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE',
'        WHEN :P9000_UNITE_AFFICHAGE = ''C'' THEN -- COLIS',
'            CASE',
'                WHEN :G_ACT_ANTERIEURES = ''N'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_UP_ORDERED),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''T''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'                WHEN :G_ACT_ANTERIEURES = ''Y'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_UP_ORDERED),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''T''',
'                      AND SITE_ID = :G_SITE',
'                      AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'            END',
'        WHEN :P9000_UNITE_AFFICHAGE = ''L'' THEN -- LISTES',
'            CASE',
'                WHEN :G_ACT_ANTERIEURES = ''N'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''T''',
'                       AND SITE_ID = :G_SITE',
'                       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'                WHEN :G_ACT_ANTERIEURES = ''Y'' THEN (',
'                    SELECT COALESCE(SUM(NUMBER_LISTS),0) ',
'                      FROM PROGRESS_OVERVIEW',
'                     WHERE TOUR_STATUS_CODE = ''T''',
'                      AND SITE_ID = :G_SITE',
'                      AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'                )',
'            END        ',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u003Cspan style=\"color:green\"\u003ETourn\u00E9es termin\u00E9es\u003C\/span\u003E",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73926181118340035)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85680095909147322)
,p_plug_name=>unistr('Avancement Activit\00E9 Chart')
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_css_classes=>'MeterGaugeStroke'
,p_icon_css_classes=>'fa-american-sign-language-interpreting'
,p_region_template_options=>'#DEFAULT#:t-Form--standardPadding'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69829573963826010)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'#jetchart_jet {',
'  height: 100vh !important;',
'}',
'</style>'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(85680157376147323)
,p_region_id=>wwv_flow_imp.id(85680095909147322)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(85680267005147324)
,p_chart_id=>wwv_flow_imp.id(85680157376147323)
,p_seq=>10
,p_name=>'Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select sum(NUMBER_UP_ORDERED)- sum(NUMBER_UP_REMAINING) AS VALUE, ''Lanc\00E9es'' AS LABEL from PROGRESS_OVERVIEW where TOUR_STATUS_CODE = ''L'''),
'UNION',
'SELECT (select sum(NUMBER_UP_ORDERED) from PROGRESS_OVERVIEW where TOUR_STATUS_CODE = ''A'') + ',
'(select sum(NUMBER_UP_REMAINING) from PROGRESS_OVERVIEW where TOUR_STATUS_CODE = ''L'') AS VALUE, ''En attentes'' AS LABEL FROM DUAL;'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6870771471532930813)
,p_plug_name=>unistr('Avancement Activit\00E9 Chart')
,p_region_name=>'gauge-segmented'
,p_parent_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_region_css_classes=>'MeterGaugeStroke'
,p_icon_css_classes=>'fa-american-sign-language-interpreting'
,p_region_template_options=>'#DEFAULT#:t-Form--standardPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69829573963826010)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
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
,p_height=>'340'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'percent'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>1
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
'SELECT TO_NUMBER(:P9000_AVANCEMENT_ACT_VAL) as value, 100 as max, ''label'' as label',
'FROM dual;'))
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
,p_region_css_classes=>'DB-block01-planing'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P9000_TYPE'
,p_plug_display_when_cond2=>'journalier'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73923583464340009)
,p_plug_name=>'Commandes en attente'
,p_region_name=>'cmd_att'
,p_parent_plug_id=>wwv_flow_imp.id(73431492904648918)
,p_region_css_classes=>'component-badge-block size-medium'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>40
,p_plug_grid_row_css_classes=>'row-planing-value'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE :G_ACT_ANTERIEURES',
'        WHEN ''N'' THEN (',
'            SELECT COALESCE(max(VALUE),0) ',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''cde_attente''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'        WHEN ''Y'' THEN (',
'            SELECT COALESCE(SUM(VALUE),0)',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''cde_attente''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_ajax_items_to_submit=>'G_SITE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "Tourn\u00E9es en attente",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73927610456340050)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73923846939340012)
,p_plug_name=>'Ligne commandes en attente'
,p_region_name=>'lcmd_att'
,p_parent_plug_id=>wwv_flow_imp.id(73431492904648918)
,p_region_css_classes=>'component-badge-block size-medium'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE :G_ACT_ANTERIEURES',
'        WHEN ''N'' THEN (',
'            SELECT COALESCE(max(VALUE),0) ',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''lcde_attente''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'        WHEN ''Y'' THEN (',
'            SELECT COALESCE(SUM(VALUE),0)',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''lcde_attente''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_ajax_items_to_submit=>'G_SITE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "Tourn\u00E9es en attente",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73924178112340015)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73923980893340013)
,p_plug_name=>'Colis en attente'
,p_region_name=>'up_att'
,p_parent_plug_id=>wwv_flow_imp.id(73431492904648918)
,p_region_css_classes=>'component-badge-block size-medium'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE :G_ACT_ANTERIEURES',
'        WHEN ''N'' THEN (',
'            SELECT COALESCE(max(VALUE),0) ',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''up_attente''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'        WHEN ''Y'' THEN (',
'            SELECT COALESCE(SUM(VALUE),0)',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''up_attente''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_ajax_items_to_submit=>'G_SITE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "Tourn\u00E9es en attente",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73924304351340017)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73924462961340018)
,p_plug_name=>unistr('Commande lanc\00E9es')
,p_region_name=>'cmd_lancee'
,p_parent_plug_id=>wwv_flow_imp.id(73431492904648918)
,p_region_css_classes=>'component-badge-block green-bg size-medium'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>70
,p_plug_grid_row_css_classes=>'row-planing-value'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE :G_ACT_ANTERIEURES',
'        WHEN ''N'' THEN (',
'            SELECT COALESCE(max(VALUE),0) ',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''cde_lancee''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'        WHEN ''Y'' THEN (',
'            SELECT COALESCE(SUM(VALUE),0)',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''cde_lancee''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_ajax_items_to_submit=>'G_SITE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "Lanc\u00E9es",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>2400844168204824
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'RMS_AP'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73924688502340020)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73924766546340021)
,p_plug_name=>unistr('Ligne commande lanc\00E9es')
,p_region_name=>'lcmd_lancee'
,p_parent_plug_id=>wwv_flow_imp.id(73431492904648918)
,p_region_css_classes=>'component-badge-block green-bg size-medium'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE :G_ACT_ANTERIEURES',
'        WHEN ''N'' THEN (',
'            SELECT COALESCE(max(VALUE),0) ',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''lcde_lancee''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'        WHEN ''Y'' THEN (',
'            SELECT COALESCE(SUM(VALUE),0)',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''lcde_lancee''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_ajax_items_to_submit=>'G_SITE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "Lanc\u00E9es",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73925088430340024)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73924805678340022)
,p_plug_name=>unistr('Colis lanc\00E9es')
,p_region_name=>'up_lancee'
,p_parent_plug_id=>wwv_flow_imp.id(73431492904648918)
,p_region_css_classes=>'component-badge-block green-bg size-medium'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    CASE :G_ACT_ANTERIEURES',
'        WHEN ''N'' THEN (',
'            SELECT COALESCE(max(VALUE),0) ',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''up_lancee''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'        WHEN ''Y'' THEN (',
'            SELECT COALESCE(SUM(VALUE),0)',
'            FROM ORDER_PLANNING_DAY',
'            WHERE KPI = ''up_lancee''',
'              AND SITE_ID = :G_SITE',
'              AND ORDER_PREP_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'        )',
'    END AS VALUE',
'FROM DUAL;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_ajax_items_to_submit=>'G_SITE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "Lanc\u00E9es",',
  '"VALUE": "VALUE",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(73925287449340026)
,p_name=>'VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
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
,p_plug_name=>unistr('Productivit\00E9 Cariste')
,p_region_name=>'prod_cariste'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_region_sub_css_classes=>'component-badge-resource'
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'remove-badge-footer'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY PAL_H),0) || '' mvt/h'' AS MEDIAN_PAL_H,',
unistr('       ''Productivit\00E9 Cariste'' AS LABEL'),
'  FROM PRODUCTIVITY_FORKLIFTS ',
' WHERE TRUNC(ACTIVITY_DATE)= TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''));'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"VALUE": "MEDIAN_PAL_H",',
  '"ICON": "fa-cart-full",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84608043034671046)
,p_name=>'MEDIAN_PAL_H'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDIAN_PAL_H'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84608490712671050)
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
,p_plug_name=>'Cartiste Chart'
,p_region_name=>'cariste_chart'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_region_css_classes=>'my-rounded-gauge'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'align-content-center'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(73433028126648934)
,p_region_id=>wwv_flow_imp.id(73432988416648933)
,p_chart_type=>'dial'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_position=>'insideIndicatorEdge'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_numeric_pattern=>'#h'
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
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(:P9000_CHART_CARISTE_VAL) AS VALUE,',
'       TO_NUMBER(:P9000_CHART_CARISTE_MAX) AS MAX',
'FROM dual;'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX'
,p_color=>'#388d3a'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_reference_line_values=>'&MAX.'
,p_reference_line_colors=>'Black'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73433409395648938)
,p_plug_name=>unistr('Productivit\00E9 Pr\00E9parateur')
,p_region_name=>'prod_prep'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_region_sub_css_classes=>'component-badge-resource'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--stretchInputs:t-Form--leftLabels:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'remove-badge-footer'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY PRISES_H),0) || '' prise/h''AS MEDIAN_PRISES_H,',
unistr('       ''Productivit\00E9 Pr\00E9parateur'' as LABEL'),
'  FROM PRODUCTIVITY_PICKING ',
' WHERE TRUNC(ACTIVITY_DATE)= TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''));'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_string.join_clob(wwv_flow_t_varchar2('{',
  '"LABEL": "\u0026LABEL.",',
  '"VALUE": "MEDIAN_PRISES_H",',
  '"ICON": "fa-archive",',
  '"LABEL_DISPLAY": "Y",',
  '"SHAPE": "t-Badge--rounded",',
  '"SIZE": "t-Badge--lg"',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(84608120127671047)
,p_name=>'MEDIAN_PRISES_H'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDIAN_PRISES_H'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(85677979227147301)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73433830711648942)
,p_plug_name=>unistr('Pr\00E9parateur Chart')
,p_region_name=>'prep_chart'
,p_parent_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_region_css_classes=>'my-rounded-gauge'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge:t-Form--stretchInputs:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69830917595826011)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'align-content-center'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(73433975417648943)
,p_region_id=>wwv_flow_imp.id(73433830711648942)
,p_chart_type=>'dial'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_position=>'insideIndicatorEdge'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_numeric_pattern=>'#h'
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
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(:P9000_CHART_PREP_VAL) AS VALUE,',
'       TO_NUMBER(:P9000_CHART_PREP_MAX) AS MAX',
'FROM dual;'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX'
,p_color=>'#388d3a'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
,p_reference_line_values=>'&MAX.'
,p_reference_line_colors=>'Black'
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
,p_name=>'P9000_UNITE_AFFICHAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73431366183648917)
,p_use_cache_before_default=>'NO'
,p_item_default=>'C'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Nb Colis;C,Nb Lignes Cde;L'
,p_colspan=>12
,p_grid_column_css_classes=>'align-right'
,p_field_template=>wwv_flow_imp.id(69966542528826057)
,p_item_css_classes=>'dashboard-toggle-tab'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73431655657648920)
,p_name=>'P9000_PRODUCTIVITE_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_prompt=>unistr('Productivit\00E9')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'row-indicator-label'
,p_colspan=>4
,p_grid_column_css_classes=>'border-right'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_css_classes=>'component-indicator-label'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73431728848648921)
,p_name=>'P9000_DISPONIBILITE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73431527314648919)
,p_prompt=>unistr('Disponibilit\00E9')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_css_classes=>'component-indicator-label'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73434540150648949)
,p_name=>'P9000_COMMANDES_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73431492904648918)
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
 p_id=>wwv_flow_imp.id(73434668642648950)
,p_name=>'P9000_LIGNES_CMD_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73431492904648918)
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
 p_id=>wwv_flow_imp.id(73922763720340001)
,p_name=>'P9000_COLIS_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73431492904648918)
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
 p_id=>wwv_flow_imp.id(84606002644671026)
,p_name=>'P9000_AVANCEMENT_ACT_VAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84607827149671044)
,p_name=>'P9000_CARISTE_MAX_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73432988416648933)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'indicator-label-meter'
,p_field_template=>wwv_flow_imp.id(69966542528826057)
,p_item_css_classes=>'indicator-label-container'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84607903294671045)
,p_name=>'P9000_PREP_MAX_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73433830711648942)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'indicator-label-meter'
,p_field_template=>wwv_flow_imp.id(69966542528826057)
,p_item_css_classes=>'indicator-label-container'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85678768976147309)
,p_name=>'P9000_CHART_CARISTE_VAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85679089781147312)
,p_name=>'P9000_CHART_CARISTE_MAX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85679370769147315)
,p_name=>'P9000_CHART_PREP_VAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85679403662147316)
,p_name=>'P9000_CHART_PREP_MAX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6870779962293930848)
,p_name=>'P9000_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6870770370006930802)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84606587322671031)
,p_name=>'POPULATE_UNITE_AFFICHAGE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9000_UNITE_AFFICHAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84606622923671032)
,p_event_id=>wwv_flow_imp.id(84606587322671031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':G9000_AFFICHAGE_UNITE := :P9000_UNITE_AFFICHAGE;'
,p_attribute_02=>'P9000_UNITE_AFFICHAGE'
,p_attribute_03=>'G9000_AFFICHAGE_UNITE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84607241956671038)
,p_event_id=>wwv_flow_imp.id(84606587322671031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73925382669340027)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84607351829671039)
,p_event_id=>wwv_flow_imp.id(84606587322671031)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73925651527340030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84607440460671040)
,p_event_id=>wwv_flow_imp.id(84606587322671031)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73925920335340033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85678844698147310)
,p_name=>'POPULATE_AVC_ACTIVITE_VAL'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85678954768147311)
,p_event_id=>wwv_flow_imp.id(85678844698147310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :G_ACT_ANTERIEURES = ''N'' THEN',
'    SELECT NVL(SUM(NUMBER_TOURS),0)',
'      INTO :P9000_AVANCEMENT_ACT_VAL',
'      FROM PROGRESS_OVERVIEW',
'     WHERE TOUR_STATUS_CODE = ''A''',
'       AND SITE_ID = :G_SITE',
'       AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'');',
'ELSIF :G_ACT_ANTERIEURES = ''O'' THEN',
'    SELECT NVL(SUM(NUMBER_TOURS),0)',
'      INTO :P9000_AVANCEMENT_ACT_VAL',
'      FROM PROGRESS_OVERVIEW',
'     WHERE TOUR_STATUS_CODE = ''A''',
'       AND SITE_ID = :G_SITE',
'       AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'');',
'END IF;'))
,p_attribute_02=>'G_SITE,G_NOW_DATE'
,p_attribute_03=>'P9000_AVANCEMENT_ACT_VAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85679170542147313)
,p_name=>'POPULATE_CHART_CARISTE'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85679213925147314)
,p_event_id=>wwv_flow_imp.id(85679170542147313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :G_ACT_ANTERIEURES = ''N'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_CARISTE_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'       AND RESOURCE_TYPE_CODE = ''C'';',
'ELSIF :G_ACT_ANTERIEURES = ''Y'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_CARISTE_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'       AND RESOURCE_TYPE_CODE = ''C'';',
'END IF;',
'',
'WITH DISPO_TIMEWINDOWS AS (',
'            SELECT "START",',
'                   "END",',
'                   WEIGHTED_NUMBER_RESOURCES',
'              FROM RESOURCE_SCHEDULE RS,',
'                   CFG_RESOURCE_TYPE RT',
'             WHERE RS.RESOURCE_TYPE_ID = RT.ID',
'               AND SITE_ID = :G_SITE',
'               AND RT.CODE = ''C''',
'               AND "START" < TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) + 1',
'               AND "END" > TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'',
'        ),',
'    MODIFIED_TIMEWINDOWS AS (',
'        SELECT GREATEST("START",TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) "START",',
'               LEAST("END",TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''))+1) "END",',
'               WEIGHTED_NUMBER_RESOURCES',
'          FROM DISPO_TIMEWINDOWS',
'',
'        ),',
'    TIMESPANS AS ( ',
'            SELECT MT.*,',
'                   24*("END" - "START") AS TIMESPAN',
'              FROM MODIFIED_TIMEWINDOWS MT',
'        )',
'    SELECT NVL(SUM(WEIGHTED_NUMBER_RESOURCES * TIMESPAN),0) AS WEIGHTED_NUMBER_RESOURCES',
'      INTO :P9000_CHART_CARISTE_MAX',
'      FROM TIMESPANS TS;',
'',
'    :P9000_CARISTE_MAX_VALUE := :P9000_CHART_CARISTE_MAX || ''h'';'))
,p_attribute_02=>'G_NOW_DATE,G_SITE'
,p_attribute_03=>'P9000_CHART_CARISTE_VAL,P9000_CHART_CARISTE_MAX,P9000_CARISTE_MAX_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85679514070147317)
,p_name=>'POPULATE_CHART_PREP'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85679662081147318)
,p_event_id=>wwv_flow_imp.id(85679514070147317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :G_ACT_ANTERIEURES = ''N'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_PREP_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE = TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'       AND RESOURCE_TYPE_CODE = ''P'';',
'ELSIF :G_ACT_ANTERIEURES = ''Y'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_PREP_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE <= TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'       AND RESOURCE_TYPE_CODE = ''P'';',
'END IF;',
'',
'WITH DISPO_TIMEWINDOWS AS (',
'            SELECT "START",',
'                   "END",',
'                   WEIGHTED_NUMBER_RESOURCES',
'              FROM RESOURCE_SCHEDULE RS,',
'                   CFG_RESOURCE_TYPE RT',
'             WHERE RS.RESOURCE_TYPE_ID = RT.ID',
'               AND SITE_ID = :G_SITE',
'               AND RT.CODE = ''P''',
'               AND "START" < TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) + 1',
'               AND "END" > TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')',
'',
'        ),',
'    MODIFIED_TIMEWINDOWS AS (',
'        SELECT GREATEST("START",TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY'')) "START",',
'               LEAST("END",TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''))+1) "END",',
'               WEIGHTED_NUMBER_RESOURCES',
'          FROM DISPO_TIMEWINDOWS',
'',
'        ),',
'    TIMESPANS AS ( ',
'            SELECT MT.*,',
'                   24*("END" - "START") AS TIMESPAN',
'              FROM MODIFIED_TIMEWINDOWS MT',
'        )',
'    SELECT NVL(SUM(WEIGHTED_NUMBER_RESOURCES * TIMESPAN),0) AS WEIGHTED_NUMBER_RESOURCES',
'      INTO :P9000_CHART_PREP_MAX',
'      FROM TIMESPANS TS;',
'    ',
'    :P9000_PREP_MAX_VALUE := :P9000_CHART_PREP_MAX || ''h'';'))
,p_attribute_02=>'G_NOW_DATE,G_SITE'
,p_attribute_03=>'P9000_CHART_PREP_VAL,P9000_PREP_MAX_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
