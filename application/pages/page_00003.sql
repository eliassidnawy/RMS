prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Test style chart'
,p_alias=>'TEST-STYLE-CHART'
,p_step_title=>'Test style chart'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'https://cdn.jsdelivr.net/npm/apexcharts'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('        /************************************** Avancement Activit\00E9 **************************************/'),
'        apex.server.process("GET_AVANCEMENT", {}, {',
'            dataType: "text",',
'            success: function(data) {',
'                console.log("Result: ", data); // will output ''25'' (as a string)',
'                // You can parse it if needed: let percentage = parseInt(data, 10);',
'',
'',
'                var av_colis = {',
'                    series: [data],',
'                    chart: {',
'                    height: 350,',
'                    type: ''radialBar'',',
'                    offsetY: -10',
'                    },',
'                    plotOptions: {',
'                    radialBar: {',
'                        startAngle: 0,',
'                        endAngle: 360,            ',
'                        dataLabels: {',
'                        name: {',
'                            fontSize: ''16px'',',
'                            color: undefined,',
'                            offsetY: 20',
'                        },',
'                        value: {',
'                            offsetY: -25,',
'                            fontSize: ''22px'',',
'                            color: undefined,',
'                            formatter: function (val) {',
'                            return val + "%";',
'                            }',
'                        }',
'                        }',
'                    }',
'                    },',
'                    fill: {',
'                    type: ''gradient'',',
'                    gradient: {',
'                        shade: ''dark'',',
'                        shadeIntensity: 0.15,',
'                        inverseColors: false,',
'                        opacityFrom: 1,',
'                        opacityTo: 1,',
'                        stops: [0, 50, 65, 91]',
'                    },',
'                    },',
'                    stroke: {',
'                    dashArray: 10',
'                    },',
'                    labels: [''Median Ratio''],',
'                    };',
'',
'                    var chart = new ApexCharts(document.querySelector("#avancement_colis"), av_colis);',
'                    chart.render();',
'',
'',
'            },',
'            error: function(xhr, status, error) {',
'                console.log("Error calling process:", error);',
'            }',
'        });',
'',
unistr('        /************************************** Productivit\00E9 par op\00E9rateur **************************************/'),
'',
'        var options = {',
'          series: [{',
'          name: ''Stockage'',',
'          data: [100, 0, 48]',
'        }, {',
'          name: ''Reappro'',',
'          data: [190, 0, 125]',
'        }, {',
'          name: ''Transfert'',',
'          data: [0, 150, 0]',
'        }, {',
'          name: ''Destockage'',',
'          data: [0, 75, 0]',
'        }],',
'          chart: {',
'          type: ''bar'',',
'          height: 350,',
'          stacked: true,',
'        },',
'        plotOptions: {',
'          bar: {',
'            horizontal: true,',
'            dataLabels: {',
'              total: {',
'                enabled: true,',
'                offsetX: 0,',
'                style: {',
'                  fontSize: ''13px'',',
'                  fontWeight: 900',
'                }',
'              }',
'            }',
'          },',
'        },',
'        stroke: {',
'          width: 1,',
'          colors: [''#000000'']',
'        },',
'        title: {',
unistr('          text: ''Productivit\00E9s par op\00E9rateur'''),
'        },',
'        xaxis: {',
'          categories: [''Employee 01'', ''Employee 02'', ''Employee 03''],',
'          title: {',
'              text: ''Nb mission / jour''',
'          },',
'          labels: {',
'            formatter: function (val) {',
'              return val',
'            }',
'          }',
'        },',
'        yaxis: {',
'          title: {',
'            text: undefined',
'          },',
'        },',
'        tooltip: {',
'          y: {',
'            formatter: function (val) {',
'              return val',
'            }',
'          }',
'        },',
'        fill: {',
'          opacity: 1',
'        },',
'        legend: {',
'          position: ''top'',',
'          horizontalAlign: ''left'',',
'          offsetX: 40',
'        },',
'        annotations: {',
'          xaxis: [{',
'            x: 125,',
'            borderColor: ''#000000'',',
'            strokeDashArray: 5,',
'            label: {',
'              borderColor: ''#00E396'',',
'              style: {',
'                color: ''#fff'',',
'                background: ''#00E396'',',
'              },',
'              text: ''X annotation'',',
'            }            ',
'          }]',
'        }        ',
'        };',
'',
'        var chart = new ApexCharts(document.querySelector("#prod_par_op"), options);',
'        chart.render();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Style the background arc */',
'#gauge-segmented path{',
'    stroke-dasharray: 12;',
'    stroke-dashoffset: 12;',
'    stroke-linecap: butt;',
'    stroke: rgb(215, 215, 215);',
'    stroke-width: 35;',
'}',
'',
'#gauge-segmented path:last-of-type {',
'    stroke-dasharray: 12;',
'    stroke-dashoffset: 12;',
'    stroke-linecap: butt;',
'    stroke: rgb(0, 72, 255);',
'    stroke-width: 35;',
'}',
'',
'#gauge-segmented svg{',
'overflow: visible;',
'}',
'',
'.t-Region.MeterGaugeStroke{',
'padding: 2rem;    ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250428112404'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72572950052793312)
,p_plug_name=>'New Chart'
,p_region_name=>'gauge-segmented'
,p_region_css_classes=>'MeterGaugeStroke'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--stretchInputs:t-Region-orderBy--center'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(72573035746793313)
,p_region_id=>wwv_flow_imp.id(72572950052793312)
,p_chart_type=>'dial'
,p_height=>'300'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
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
 p_id=>wwv_flow_imp.id(72573195468793314)
,p_chart_id=>wwv_flow_imp.id(72573035746793313)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''Progress'' AS label,',
'    25 AS value,',
'    100 AS max_value',
'FROM dual'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_short_desc_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_threshold_display=>'all'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144778455278860131)
,p_plug_name=>'AVANCEMENT_ACTIVITEE'
,p_region_name=>'avancement_colis'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144779764809860144)
,p_plug_name=>'COMMANDES_ATT'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69836676308826012)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''Commandes'',''En attente'', 42, ''Lanc\00E9es'', 4 from dual'),
'union',
unistr('select ''Lignes de commandes'',''En attente'',2384,''Lanc\00E9es'',164 from dual'),
'union',
unistr('select ''Colis'',''En attente'',5486,''Lanc\00E9es'',528 from dual;')))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(72568411368700452)
,p_region_id=>wwv_flow_imp.id(144779764809860144)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'''COMMANDES'''
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'''ENATTENTE'''
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'42'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144780358864860150)
,p_plug_name=>'Progress_bar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>60
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(72570018561700460)
,p_region_id=>wwv_flow_imp.id(144780358864860150)
,p_chart_type=>'dial'
,p_title=>unistr('Disponibilit\00E9')
,p_width=>'600'
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
,p_gauge_indicator_size=>.5
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(72570531964700463)
,p_chart_id=>wwv_flow_imp.id(72570018561700460)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 80 as MAX_HRS, 49 as CURR_HRS, 0 AS MIN_HRS',
' from dual;'))
,p_items_value_column_name=>'CURR_HRS'
,p_items_min_value=>'MIN_HRS'
,p_items_max_value=>'MAX_HRS'
,p_color=>'#008000'
,p_items_label_rendered=>false
,p_reference_line_values=>'&MAX_HRS.'
,p_reference_line_colors=>'Black'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144780806226860155)
,p_plug_name=>unistr('Productivit\00E9_par_operateur')
,p_region_name=>'prod_par_op'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72571335024700478)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_AVANCEMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_RESULT  VARCHAR2(100);',
'BEGIN',
'    SELECT 25 INTO L_RESULT FROM DUAL;',
'',
'    htp.p(L_RESULT);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>72571335024700478
);
wwv_flow_imp.component_end;
end;
/
