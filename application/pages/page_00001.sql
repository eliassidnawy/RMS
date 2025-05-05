prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'RMS'
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
'        chart.render();    ',
'',
'',
unistr('        /************************************** Evolution Productivit\00E9 **************************************/'),
'',
'',
'                var options = {',
'            chart: {',
'                height: 350,',
'                type: ''line'',',
'                zoom: {',
'                    enabled: false',
'                }',
'            },',
'            title: {',
'                text: ''Productivity Progress from January to August 2023'',',
'                align: ''center''',
'            },',
'            dataLabels: {',
'                enabled: false',
'            },',
'            stroke: {',
'                curve: ''smooth''',
'            },',
'            xaxis: {',
'                categories: [''January'', ''February'', ''March'', ''April'', ''May'', ''June'', ''July'', ''August''],',
'            },',
'            yaxis: {',
'                title: {',
'                    text: ''Productivity''',
'                }',
'            },',
'            series: [{',
'                name: ''Productivity'',',
'                data: [10, 15, 25, 22, 35, 40, 45, 50]',
'            }],',
'            markers: {',
'                size: 5,',
'                hover: {',
'                    size: 7',
'                }',
'            }',
'        };',
'',
'        var chart = new ApexCharts(document.querySelector(''#evol_prod''), options);',
'        chart.render();',
'',
'        /************************************** Suivi Avancement **************************************/',
'      ',
'        var options = {',
'          series: [',
'          {',
'            name: ''Bob'',',
'            data: [',
'              {',
'                x: ''Design'',',
'                y: [',
'                  new Date(''2019-03-05'').getTime(),',
'                  new Date(''2019-03-08'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Code'',',
'                y: [',
'                  new Date(''2019-03-02'').getTime(),',
'                  new Date(''2019-03-05'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Code'',',
'                y: [',
'                  new Date(''2019-03-05'').getTime(),',
'                  new Date(''2019-03-07'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Test'',',
'                y: [',
'                  new Date(''2019-03-03'').getTime(),',
'                  new Date(''2019-03-09'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Test'',',
'                y: [',
'                  new Date(''2019-03-08'').getTime(),',
'                  new Date(''2019-03-11'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Validation'',',
'                y: [',
'                  new Date(''2019-03-11'').getTime(),',
'                  new Date(''2019-03-16'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Design'',',
'                y: [',
'                  new Date(''2019-03-01'').getTime(),',
'                  new Date(''2019-03-03'').getTime()',
'                ],',
'              }',
'            ]',
'          },',
'          {',
'            name: ''Joe'',',
'            data: [',
'              {',
'                x: ''Design'',',
'                y: [',
'                  new Date(''2019-03-02'').getTime(),',
'                  new Date(''2019-03-05'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Test'',',
'                y: [',
'                  new Date(''2019-03-06'').getTime(),',
'                  new Date(''2019-03-16'').getTime()',
'                ],',
'                goals: [',
'                  {',
'                    name: ''Break'',',
'                    value: new Date(''2019-03-10'').getTime(),',
'                    strokeColor: ''#CD2F2A''',
'                  }',
'                ]',
'              },',
'              {',
'                x: ''Code'',',
'                y: [',
'                  new Date(''2019-03-03'').getTime(),',
'                  new Date(''2019-03-07'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Deployment'',',
'                y: [',
'                  new Date(''2019-03-20'').getTime(),',
'                  new Date(''2019-03-22'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Design'',',
'                y: [',
'                  new Date(''2019-03-10'').getTime(),',
'                  new Date(''2019-03-16'').getTime()',
'                ]',
'              }',
'            ]',
'          },',
'          {',
'            name: ''Dan'',',
'            data: [',
'              {',
'                x: ''Code'',',
'                y: [',
'                  new Date(''2019-03-10'').getTime(),',
'                  new Date(''2019-03-17'').getTime()',
'                ]',
'              },',
'              {',
'                x: ''Validation'',',
'                y: [',
'                  new Date(''2019-03-05'').getTime(),',
'                  new Date(''2019-03-09'').getTime()',
'                ],',
'                goals: [',
'                  {',
'                    name: ''Break'',',
'                    value: new Date(''2019-03-07'').getTime(),',
'                    strokeColor: ''#CD2F2A''',
'                  }',
'                ]',
'              },',
'            ]',
'          }',
'        ],',
'          chart: {',
'          height: 450,',
'          type: ''rangeBar''',
'        },',
'        plotOptions: {',
'          bar: {',
'            horizontal: true,',
'            barHeight: ''80%''',
'          }',
'        },',
'        xaxis: {',
'          type: ''datetime''',
'        },',
'        stroke: {',
'          width: 1',
'        },',
'        fill: {',
'          type: ''solid'',',
'          opacity: 0.6',
'        },',
'        legend: {',
'          position: ''top'',',
'          horizontalAlign: ''left''',
'        },',
'        annotations: {',
'          xaxis: [{',
'            x: new Date(''2019-03-16'').getTime(),',
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
'        var chart = new ApexCharts(document.querySelector("#suivi_avc"), options);',
'        chart.render();        '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250425155726'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72210584943159703)
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
 p_id=>wwv_flow_imp.id(72211894474159716)
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
 p_id=>wwv_flow_imp.id(72211957782159717)
,p_region_id=>wwv_flow_imp.id(72211894474159716)
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
 p_id=>wwv_flow_imp.id(72212488529159722)
,p_plug_name=>'Progress_bar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>50
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(72212514369159723)
,p_region_id=>wwv_flow_imp.id(72212488529159722)
,p_chart_type=>'dial'
,p_title=>unistr('Disponibilit\00E9')
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'number'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>.5
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(72212616811159724)
,p_chart_id=>wwv_flow_imp.id(72212514369159723)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 80 as MAX_HRS, 49 as CURR_HRS, 0 AS MIN_HRS',
' from dual;'))
,p_items_value_column_name=>'CURR_HRS'
,p_items_min_value=>'MIN_HRS'
,p_items_max_value=>'MAX_HRS'
,p_items_label_column_name=>'MAX_HRS'
,p_color=>'#f731ed'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_font_family=>'Arial'
,p_items_label_font_style=>'normal'
,p_items_label_font_size=>'8'
,p_reference_line_values=>'10'
,p_reference_line_colors=>'Black'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72212935891159727)
,p_plug_name=>unistr('Productivit\00E9_par_operateur')
,p_region_name=>'prod_par_op'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72213091530159728)
,p_plug_name=>'Evolution_de_productivite'
,p_region_name=>'evol_prod'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72213264685159730)
,p_plug_name=>'suivi avencement range bar'
,p_region_name=>'suivi_avc'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>80
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72212151649159719)
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
,p_internal_uid=>72212151649159719
);
wwv_flow_imp.component_end;
end;
/
