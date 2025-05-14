prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'RMS-Dashboard'
,p_alias=>'RMS-DASHBOARD'
,p_step_title=>'RMS-Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/********************* Function get_journalier *********************/',
'function get_journalier(){',
'    apex.server.process("GET_CMD_ATT", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("cmd_att: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#journalier")[0].contentWindow.$("#cmd_att .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_CMD_ATT:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_LCMD_ATT", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("lcmd_att: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#journalier")[0].contentWindow.$("#lcmd_att .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_LCMD_ATT:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_UP_ATT", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("up_att: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#journalier")[0].contentWindow.$("#up_att .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_UP_ATT:", error);',
'        }',
'    }); ',
'',
'    apex.server.process("GET_CMD_LANCEE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("cmd_lancee: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#journalier")[0].contentWindow.$("#cmd_lancee .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_CMD_LANCEE:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_LCMD_LANCEE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("lcmd_lancee: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#journalier")[0].contentWindow.$("#lcmd_lancee .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_LCMD_LANCEE:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_UP_LANCEE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("up_lancee: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#journalier")[0].contentWindow.$("#up_lancee .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_UP_LANCEE:", error);',
'        }',
'    });    ',
'}',
'',
'/********************* Function get_avancement *********************/',
'function get_avancement(){',
'    apex.server.process("GET_TOUR_TERMINEE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("tour_t: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#avcActivite")[0].contentWindow.$("#tour_t .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_TOUR_TERMINEE:", error);',
'        }',
'    });  ',
'',
'    apex.server.process("GET_TOUR_LANCEE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("tour_l: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#avcActivite")[0].contentWindow.$("#tour_l .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_TOUR_LANCEE:", error);',
'        }',
'    }); ',
'',
'    apex.server.process("GET_TOUR_ATT", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("tour_a: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#avcActivite")[0].contentWindow.$("#tour_a .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_TOUR_ATT:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_AVANCEMENT_ACT_VAL", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            $("#avcActivite")[0].contentWindow.apex.region("gauge-segmented").refresh();',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_AVANCEMENT_ACT_VAL:", error);',
'        }',
'    });              ',
'}',
'',
'/********************* Function get_ressource *********************/',
'function get_ressource(){',
'    apex.server.process("GET_PROD_CARISTE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("prod_cariste: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#ressource")[0].contentWindow.$("#prod_cariste .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_PROD_CARISTE:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_PROD_PREP", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            console.log("prod_prep: ", data); // will output ''25'' (as a string)',
'            // You can parse it if needed: let percentage = parseInt(data, 10);',
'            var badge = $("#ressource")[0].contentWindow.$("#prod_prep .t-Badge-value");',
'            badge.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_PROD_PREP:", error);',
'        }',
'    }); ',
'',
'    apex.server.process("GET_DISPO_CARISTE", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            $("#ressource")[0].contentWindow.apex.region("cariste_chart").refresh();',
'            var dispMaxCariste = $("#ressource")[0].contentWindow.$("#P9000_CARISTE_MAX_VALUE_DISPLAY");',
'            dispMaxCariste.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_DISPO_CARISTE:", error);',
'        }',
'    });',
'',
'    apex.server.process("GET_DISPO_PREP", {}, {',
'        dataType: "text",',
'        success: function(data) {',
'            $("#ressource")[0].contentWindow.apex.region("prep_chart").refresh();',
'            var dispMaxPrep = $("#ressource")[0].contentWindow.$("#P9000_PREP_MAX_VALUE_DISPLAY");',
'            dispMaxPrep.text(data);',
'        },',
'        error: function(xhr, status, error) {',
'            console.log("Error calling process GET_DISPO_PREP:", error);',
'        }',
'    });                          ',
'}'))
,p_css_file_urls=>'#APP_FILES#plugin-dashboard.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250513150542'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73926501926340039)
,p_plug_name=>'Filter'
,p_region_name=>'dashboard-buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69896116805826029)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109302747619432878)
,p_plug_name=>'User Dashboard'
,p_region_name=>'dashboard'
,p_region_css_classes=>'dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69829573963826010)
,p_plug_display_sequence=>40
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PKG_DASHBOARD_MGMT.GET_DASHBOARD(',
'        P_IN_DASHBOARD_IDENT   => 3',
'    ) AS JSON_BLOB',
'FROM',
'    DUAL'))
,p_plug_source_type=>'PLUGIN_APEX.BI.DASHBOARD.D3'
,p_ajax_items_to_submit=>'P6_DASHBOARD_IDENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "colSpan": 12,',
'  "isSortable": false,',
'  "height": 400,',
'  "refresh": 0,',
'  "backColor": "transparent",',
'  "color": "inherit",',
'  "boxShadow": "0px 0px 6px 0.32px rgba(0, 0, 0, 0.26)",',
'  "optionsLink": {',
'    "backColor": "transparent",',
'    "color": "inherit",',
'    "icon": "fa-link"',
'  },',
'  "optionsLinkTop": {',
'    "backColor": "transparent",',
'    "color": "inherit",',
'    "icon": "fa-link"',
'  },',
'  "title": {',
'    "backColor": "transparent",',
'    "color": "inherit",',
'    "icon": null,',
'    "iconColor": "inherit"',
'  }',
'}'))
,p_attribute_02=>'A'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_PK     NUMBER := :PK;',
'    VR_BLOB   BLOB;',
'BEGIN',
'    SELECT',
'        PKG_DASHBOARD_MGMT.GET_DASHBOARD(',
'            P_IN_DASHBOARD_IDENT   => V(',
'                ''P6_DASHBOARD_IDENT''',
'            ),',
'            P_IN_LOADING_MODE      => ''A'',',
'            P_IN_ITEM_IDENT        => VR_PK',
'        )',
'    INTO VR_BLOB',
'    FROM',
'        DUAL;',
'        ',
'/*Please ignore PLS-00382: expression is of wrong type because binding of :BLOB is not supported by current APEX PL/SQL Validator*/',
'    :RESULT := VR_BLOB;',
'END;'))
,p_attribute_04=>'charts:map:table:calendar:note:calendarheatmap'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "axisLabelPosition": "outer2",',
'  "background": null,',
'  "chartTitle": null,',
'  "gauge": {',
'    "min": 0,',
'    "max": null,',
'    "type": "sinlge",',
'    "fullCircle": true,',
'    "width": null,',
'    "arcMinWidth": null,',
'    "title": null',
'  },',
'  "grid": {',
'    "x": true,',
'    "y": true',
'  },',
'  "legend": {',
'    "position": "bottom",',
'    "show": true',
'  },',
'  "line": {',
'    "step": "step"',
'  },',
'  "padding": {',
'    "bottom": null,',
'    "left": null,',
'    "right": null,',
'    "top": null',
'  },',
'  "rotateAxis": false,',
'  "showAbsoluteValues": false,',
'  "showDataLabels": false,',
'  "showDataPoints": true,',
'  "threshold": 0.05,',
'  "tooltip": {',
'    "grouped": true,',
'    "show": true',
'  },',
'  "transitionDuration": 200,',
'  "x": {',
'    "axisHeight": 50,',
'    "label": "x Axis",',
'    "timeFormat": "%Y-%m-%dT%H:%M:%S",',
'    "type": "category",',
'    "tick": {',
'      "cutAfter": 30,',
'      "maxNumber": 25,',
'      "multiline": false,',
'      "rotation": 60,',
'      "autoRotate": true,',
'      "timeFormat": "%y-%m-%d %H:%M",',
'      "fit": true',
'    }',
'  },',
'  "y": {',
'    "label": "y Axis 1",',
'    "log": false,',
'    "max": null,',
'    "min": null,',
'    "unit": null,',
'    "tick": {',
'      "maxNumber": null',
'    }',
'  },',
'  "y2": {',
'    "label": "y Axis 2",',
'    "log": false,',
'    "max": null,',
'    "min": null,',
'    "unit": null,',
'    "tick": {',
'      "maxNumber": null',
'    }',
'  },',
'  "zoom": {',
'    "enabled": true,',
'    "type": "scroll",',
'    "rescale": false',
'  }',
'}'))
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "ALLOWED_ATTR": [',
'    "accesskey",',
'    "align",',
'    "alt",',
'    "always",',
'    "autocomplete",',
'    "autoplay",',
'    "border",',
'    "cellpadding",',
'    "cellspacing",',
'    "charset",',
'    "class",',
'    "colspan",',
'    "dir",',
'    "height",',
'    "href",',
'    "id",',
'    "lang",',
'    "name",',
'    "rel",',
'    "required",',
'    "rowspan",',
'    "src",',
'    "style",',
'    "summary",',
'    "tabindex",',
'    "target",',
'    "title",',
'    "type",',
'    "value",',
'    "width"',
'  ],',
'  "ALLOWED_TAGS": [',
'    "a",',
'    "address",',
'    "b",',
'    "blockquote",',
'    "br",',
'    "caption",',
'    "code",',
'    "dd",',
'    "div",',
'    "dl",',
'    "dt",',
'    "em",',
'    "figcaption",',
'    "figure",',
'    "h1",',
'    "h2",',
'    "h3",',
'    "h4",',
'    "h5",',
'    "h6",',
'    "hr",',
'    "i",',
'    "img",',
'    "label",',
'    "li",',
'    "nl",',
'    "ol",',
'    "p",',
'    "pre",',
'    "s",',
'    "span",',
'    "strike",',
'    "strong",',
'    "sub",',
'    "sup",',
'    "table",',
'    "tbody",',
'    "td",',
'    "th",',
'    "thead",',
'    "tr",',
'    "u",',
'    "ul"',
'  ]',
'}'))
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_FILE_NAME     VARCHAR2(200);',
'    VR_MIME_TYPE     VARCHAR2(200);',
'    VR_BINARY_FILE   BLOB;',
'    VR_PK            VARCHAR2(4000) := :PK;',
'    VR_ITEM_ID       VARCHAR2(4000) := :ITEM_ID;',
'    VR_COL_NAME      VARCHAR2(200)  := NVL(:P1_COL_NAME, ''IMG_COLLECTION'');',
'BEGIN',
'    SELECT',
'        C001,',
'        C002,',
'        BLOB001',
'    INTO',
'        VR_FILE_NAME,',
'        VR_MIME_TYPE,',
'        VR_BINARY_FILE',
'    FROM',
'        APEX_COLLECTIONS',
'    WHERE',
'        COLLECTION_NAME   = VR_COL_NAME',
'        AND C001              = VR_PK',
'        AND ROWNUM            = 1;',
'',
'    :FILE_NAME     := VR_FILE_NAME;',
'    :MIME_TYPE     := VR_MIME_TYPE;',
'     /* Please ignore PLS-00382: expression is of wrong type',
'       because binding of :BLOB is not supported by current',
'       APEX PL/SQL Validator ',
'     */',
'    :BINARY_FILE   := VR_BINARY_FILE;',
'    /* optional - set the maximum amount of time specified in the number of seconds that the downloaded file is cached by client browsers */',
'    :CACHE_TIME    := 21600;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;'))
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "circles": {',
'    "color": "rgb(97, 159, 209)",',
'    "radius": 5,',
'    "opacity": 0.9,',
'    "opacityHover": 0.65,',
'    "shadows": false',
'  },',
'  "map": {',
'    "stroke": "white",',
'    "strokeWidth": "0.5px",',
'    "color": "black",',
'    "centerLongitude": 0,',
'    "centerLatitude": 0,',
'    "initialZoom": 1,',
'    "zoomEnabled": true,',
'    "shadows": true',
'  },',
'  "tour": {',
'    "enabled": true,',
'    "direction": "right",',
'    "speed": 7,',
'    "start": -30,',
'    "shadowEffect": true',
'  }',
'}'))
,p_attribute_09=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'   "header":{',
'      "background":"white",',
'      "textAlign":"left",',
'      "color":"inherit",',
'      "border":"1px solid rgba(240, 240, 240, 1)"',
'   },',
'   "cells":{',
'      "background": "transparent",',
'      "textAlign":"left",',
'      "color":"inherit",',
'      "border":"1px solid rgba(240, 240, 240, 1)"',
'   },',
'   "evenRow":{',
'      "background":"white",',
'      "textAlign":"left",',
'      "color":"inherit",',
'      "borderBottom":"1px solid rgba(240, 240, 240, 1)"',
'   },',
'   "oddRow":{',
'      "background":"rgb(240,240,240)",',
'      "textAlign":"left",',
'      "color":"inherit",',
'      "borderBottom":"1px solid rgba(240, 240, 240, 1)"',
'   }',
'}'))
,p_attribute_10=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "label": {',
'   "labelColor": "#303030",',
'   "labelColor2": "#303030"',
'  },',
'  "shadows": false,',
'  "hour": {',
'   "labelColor": "#303030",',
'   "tickColor": "#999"',
'  },',
'  "second": {',
'   "label": false,',
'   "labelColor": "#707070",',
'   "tickColor": "#ccc"',
'  },',
'  "hands": {',
'   "color": "#303030",',
'   "coverFillColor": "white",',
'   "coverStrokeColor": "#999",',
'   "coverSize": 2',
'  },',
'  "circle": {',
'   "color": "#ccc",',
'   "width": 3,',
'   "fillColor": "#eeeeee"',
'  }',
' }'))
,p_attribute_12=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "eventLimitPerDay": 2,',
'  "viewType": "dayGridMonth",',
'  "displayTime": true,',
'  "hours12": false,',
'  "timeGridStartTime": "06:00:00"',
'}'))
,p_attribute_13=>'Error occured'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_ITEM_ID    VARCHAR2(4000) := :ITEM_ID;',
'    VR_CLOB       CLOB := :CLOB;',
'    VR_COL_NAME   VARCHAR2(200) := NVL( :P1_COL_NAME, ''DASHBOARD_NOTE_COLLECTION'' );',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => VR_COL_NAME);',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME   => VR_COL_NAME,',
'        P_C001              => VR_ITEM_ID,',
'        P_CLOB001           => VR_CLOB',
'    );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114765021997442378)
,p_plug_name=>'Buttons'
,p_region_name=>'dashboard-buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(69832353272826011)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72746469071867791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114765021997442378)
,p_button_name=>'SAVE_DASHBOARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(69969464971826062)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Dashboard'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72746808352867792)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(114765021997442378)
,p_button_name=>'EDIT_DASHBOARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(69969464971826062)
,p_button_image_alt=>'Edit Dashboard'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73926730996340041)
,p_name=>'P6_ACTIVITE_ANTERIEURES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73926501926340039)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Activit\00E9s ant\00E9rieures')
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(69966808032826059)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73926997146340043)
,p_name=>'P6_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73926501926340039)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT SYSDATE FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Date'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69966542528826057)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109303481714432888)
,p_name=>'P6_DASHBOARD_IDENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109302747619432878)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114766799017442399)
,p_name=>'P6_ITEM_SORT_ORDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109302747619432878)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72750672689867797)
,p_name=>'Enable Resort'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72746808352867792)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72752171511867798)
,p_event_id=>wwv_flow_imp.id(72750672689867797)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".dashboard").trigger("sortableOn");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72751166951867798)
,p_event_id=>wwv_flow_imp.id(72750672689867797)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72746808352867792)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72751622695867798)
,p_event_id=>wwv_flow_imp.id(72750672689867797)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72746469071867791)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72747482242867794)
,p_name=>'Get User Dashboard'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72747913778867795)
,p_event_id=>wwv_flow_imp.id(72747482242867794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DASHBOARD_IDENT',
'       INTO :P6_DASHBOARD_IDENT',
'       FROM T_DASHBOARD_ITEMS',
'      WHERE DASHBOARD_IDENT = 3',
'        AND ROWNUM = 1;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P6_DASHBOARD_IDENT := NULL;',
'END;'))
,p_attribute_02=>'G_USERNAME'
,p_attribute_03=>'P6_DASHBOARD_IDENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72748456471867796)
,p_event_id=>wwv_flow_imp.id(72747482242867794)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109302747619432878)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72752500903867798)
,p_name=>'Disable Resort'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72746469071867791)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72754013833867799)
,p_event_id=>wwv_flow_imp.id(72752500903867798)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".dashboard").trigger("sortableOff");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72753525912867799)
,p_event_id=>wwv_flow_imp.id(72752500903867798)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72746469071867791)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72753041275867799)
,p_event_id=>wwv_flow_imp.id(72752500903867798)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(72746808352867792)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72754502652867799)
,p_event_id=>wwv_flow_imp.id(72752500903867798)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PKG_DASHBOARD_MGMT.STORE_NEW_ITEM_ORDER(',
'    P_IN_DASHBOARD_IDENT   => :P6_DASHBOARD_IDENT,',
'    P_IN_ITEMS             => :P6_ITEM_SORT_ORDER',
');'))
,p_attribute_02=>'P6_DASHBOARD_IDENT,P6_ITEM_SORT_ORDER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72749725041867796)
,p_name=>'Refresh Dashboard on Dialog Closed - Edit'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(109302747619432878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72750274683867797)
,p_event_id=>wwv_flow_imp.id(72749725041867796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109302747619432878)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72748886708867796)
,p_name=>'On Reorder Dashboard Items'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(109302747619432878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_APEX.BI.DASHBOARD.D3|REGION TYPE|sortorder'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72749319932867796)
,p_event_id=>wwv_flow_imp.id(72748886708867796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_ITEM_SORT_ORDER'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73927072911340044)
,p_name=>'POPULATE_ACTIVITEE_ANTERIEUR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_ACTIVITE_ANTERIEURES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73927116487340045)
,p_event_id=>wwv_flow_imp.id(73927072911340044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':G_ACT_ANTERIEURES := :P6_ACTIVITE_ANTERIEURES;'
,p_attribute_02=>'P6_ACTIVITE_ANTERIEURES'
,p_attribute_03=>'G_ACT_ANTERIEURES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84605091585671016)
,p_event_id=>wwv_flow_imp.id(73927072911340044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_journalier();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84606769171671033)
,p_event_id=>wwv_flow_imp.id(73927072911340044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_avancement();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85678195644147303)
,p_event_id=>wwv_flow_imp.id(73927072911340044)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_ressource();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84176247585147901)
,p_name=>'POPULATE_NOW_DATE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84176394229147902)
,p_event_id=>wwv_flow_imp.id(84176247585147901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':G_NOW_DATE := :P6_DATE;'
,p_attribute_02=>'P6_DATE'
,p_attribute_03=>'G_NOW_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84176433553147903)
,p_event_id=>wwv_flow_imp.id(84176247585147901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_journalier();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84606930891671035)
,p_event_id=>wwv_flow_imp.id(84176247585147901)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_avancement();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85678237377147304)
,p_event_id=>wwv_flow_imp.id(84176247585147901)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'get_ressource();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84604366935671009)
,p_name=>'REFRESH_SITE_DATA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84605548642671021)
,p_event_id=>wwv_flow_imp.id(84604366935671009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109302747619432878)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84605185610671017)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_CMD_ATT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'        SELECT VALUE',
'          INTO L_BADGE_VALUE ',
'          FROM ORDER_PLANNING_DAY',
'          WHERE KPI = ''cde_attente''',
'            AND SITE_ID = :G_SITE',
'            AND ORDER_PREP_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'    ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'        SELECT NVL(SUM(VALUE),0)',
'          INTO L_BADGE_VALUE  ',
'          FROM ORDER_PLANNING_DAY',
'         WHERE KPI = ''cde_attente''',
'           AND SITE_ID = :G_SITE',
'           AND ORDER_PREP_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'    END IF;',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84605185610671017
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84605282093671018)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_LCMD_ATT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'        SELECT VALUE',
'          INTO L_BADGE_VALUE ',
'          FROM ORDER_PLANNING_DAY',
'          WHERE KPI = ''lcde_attente''',
'            AND SITE_ID = :G_SITE',
'            AND ORDER_PREP_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'    ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'        SELECT NVL(SUM(VALUE),0)',
'          INTO L_BADGE_VALUE  ',
'          FROM ORDER_PLANNING_DAY',
'         WHERE KPI = ''lcde_attente''',
'           AND SITE_ID = :G_SITE',
'           AND ORDER_PREP_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'    END IF;',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84605282093671018
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84605315974671019)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_UP_ATT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'        SELECT VALUE',
'          INTO L_BADGE_VALUE ',
'          FROM ORDER_PLANNING_DAY',
'          WHERE KPI = ''up_attente''',
'            AND SITE_ID = :G_SITE',
'            AND ORDER_PREP_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'    ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'        SELECT NVL(SUM(VALUE),0)',
'          INTO L_BADGE_VALUE  ',
'          FROM ORDER_PLANNING_DAY',
'         WHERE KPI = ''up_attente''',
'           AND SITE_ID = :G_SITE',
'           AND ORDER_PREP_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'    END IF;',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84605315974671019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84605669541671022)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_CMD_LANCEE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'        SELECT VALUE',
'          INTO L_BADGE_VALUE ',
'          FROM ORDER_PLANNING_DAY',
'          WHERE KPI = ''cde_lancee''',
'            AND SITE_ID = :G_SITE',
'            AND ORDER_PREP_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'    ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'        SELECT NVL(SUM(VALUE),0)',
'          INTO L_BADGE_VALUE  ',
'          FROM ORDER_PLANNING_DAY',
'         WHERE KPI = ''cde_lancee''',
'           AND SITE_ID = :G_SITE',
'           AND ORDER_PREP_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'    END IF;',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84605669541671022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84605781137671023)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_LCMD_LANCEE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'        SELECT VALUE',
'          INTO L_BADGE_VALUE ',
'          FROM ORDER_PLANNING_DAY',
'          WHERE KPI = ''lcde_lancee''',
'            AND SITE_ID = :G_SITE',
'            AND ORDER_PREP_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'    ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'        SELECT NVL(SUM(VALUE),0)',
'          INTO L_BADGE_VALUE  ',
'          FROM ORDER_PLANNING_DAY',
'         WHERE KPI = ''lcde_lancee''',
'           AND SITE_ID = :G_SITE',
'           AND ORDER_PREP_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'    END IF;',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84605781137671023
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84605898195671024)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_UP_LANCEE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'        SELECT VALUE',
'          INTO L_BADGE_VALUE ',
'          FROM ORDER_PLANNING_DAY',
'          WHERE KPI = ''up_lancee''',
'            AND SITE_ID = :G_SITE',
'            AND ORDER_PREP_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'    ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'        SELECT NVL(SUM(VALUE),0)',
'          INTO L_BADGE_VALUE  ',
'          FROM ORDER_PLANNING_DAY',
'         WHERE KPI = ''up_lancee''',
'           AND SITE_ID = :G_SITE',
'           AND ORDER_PREP_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'    END IF;',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84605898195671024
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84606830469671034)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_TOUR_TERMINEE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :G9000_AFFICHAGE_UNITE = ''C'' THEN -- COLIS',
'        IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'            SELECT NVL(SUM(NUMBER_UP_ORDERED),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''T''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'            SELECT NVL(SUM(NUMBER_UP_ORDERED),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''T''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        END IF;',
'    ELSIF :G9000_AFFICHAGE_UNITE = ''L'' THEN -- LISTES',
'        IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN ',
'            SELECT NVL(SUM(NUMBER_LISTS),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''T''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN ',
'            SELECT NVL(SUM(NUMBER_LISTS),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''T''',
'              AND SITE_ID = :G_SITE',
'              AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        END IF;  ',
'    END IF;',
'    htp.p(L_BADGE_VALUE);',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84606830469671034
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84607010071671036)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_TOUR_LANCEE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'BEGIN',
'    IF :G9000_AFFICHAGE_UNITE = ''C'' THEN -- COLIS',
'        IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'            SELECT NVL(SUM(NUMBER_UP_ORDERED) - SUM(NUMBER_UP_REMAINING),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'            SELECT NVL(SUM(NUMBER_UP_ORDERED) - SUM(NUMBER_UP_REMAINING),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        END IF;',
'    ELSIF :G9000_AFFICHAGE_UNITE = ''L'' THEN -- LISTES',
'        IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN ',
'            SELECT NVL(SUM(NUMBER_LISTS) - SUM(NUMBER_REMAINING_LISTS),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN ',
'            SELECT NVL(SUM(NUMBER_LISTS) - SUM(NUMBER_REMAINING_LISTS),0)',
'              INTO L_BADGE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'              AND SITE_ID = :G_SITE',
'              AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'        END IF;  ',
'    END IF;',
'    htp.p(L_BADGE_VALUE);',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84607010071671036
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84607197529671037)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_TOUR_ATT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   NUMBER;',
'    L_ATT_VALUE     NUMBER;',
'    L_LANCEE_VALUE  NUMBER;',
'BEGIN',
'    IF :G9000_AFFICHAGE_UNITE = ''C'' THEN -- COLIS',
'        IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'            SELECT NVL(SUM(NUMBER_UP_ORDERED),0)',
'              INTO L_ATT_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''A''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            SELECT NVL(SUM(NUMBER_UP_REMAINING),0)',
'              INTO L_LANCEE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            L_BADGE_VALUE := L_ATT_VALUE + L_LANCEE_VALUE;',
'',
'        ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'            SELECT NVL(SUM(NUMBER_UP_ORDERED),0)',
'              INTO L_ATT_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''A''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            SELECT NVL(SUM(NUMBER_UP_REMAINING),0)',
'              INTO L_LANCEE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            L_BADGE_VALUE := L_ATT_VALUE + L_LANCEE_VALUE;',
'        END IF;',
'    ELSIF :G9000_AFFICHAGE_UNITE = ''L'' THEN -- LISTES',
'        IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN ',
'            SELECT NVL(SUM(NUMBER_LISTS),0)',
'              INTO L_ATT_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''A''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            SELECT NVL(SUM(NUMBER_REMAINING_LISTS),0)',
'              INTO L_LANCEE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            L_BADGE_VALUE := L_ATT_VALUE + L_LANCEE_VALUE;',
'        ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN ',
'            SELECT NVL(SUM(NUMBER_LISTS),0)',
'              INTO L_ATT_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''A''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            SELECT NVL(SUM(NUMBER_REMAINING_LISTS),0)',
'              INTO L_LANCEE_VALUE',
'              FROM PROGRESS_OVERVIEW',
'             WHERE TOUR_STATUS_CODE = ''L''',
'               AND SITE_ID = :G_SITE',
'               AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'',
'            L_BADGE_VALUE := L_ATT_VALUE + L_LANCEE_VALUE;',
'        END IF;  ',
'    END IF;',
'    htp.p(L_BADGE_VALUE);',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84607197529671037
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84607773127671043)
,p_process_sequence=>100
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_AVANCEMENT_ACT_VAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'    SELECT NVL(SUM(NUMBER_TOURS),0)',
'      INTO :P9000_AVANCEMENT_ACT_VAL',
'      FROM PROGRESS_OVERVIEW',
'     WHERE TOUR_STATUS_CODE = ''A''',
'      AND SITE_ID = :G_SITE',
'      AND TRUNC(LATEST_AVAIL_DATE) = TO_DATE(:P6_DATE, ''DD/MM/YYYY'');',
'ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN ',
'    SELECT NVL(SUM(NUMBER_TOURS),0)',
'      INTO :P9000_AVANCEMENT_ACT_VAL',
'      FROM PROGRESS_OVERVIEW',
'     WHERE TOUR_STATUS_CODE = ''A''',
'      AND SITE_ID = :G_SITE',
'      AND TRUNC(LATEST_AVAIL_DATE) <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'');        ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>84607773127671043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85678033938147302)
,p_process_sequence=>110
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PROD_CARISTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   VARCHAR2(100);',
'BEGIN',
'SELECT ROUND(NVL(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY PAL_H),0)) || '' mvt/h'' AS MEDIAN_PAL_H',
'  INTO L_BADGE_VALUE',
'  FROM PRODUCTIVITY_FORKLIFTS ',
' WHERE TRUNC(ACTIVITY_DATE)= TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''));',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>85678033938147302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85678331263147305)
,p_process_sequence=>120
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PROD_PREP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_BADGE_VALUE   VARCHAR2(100);',
'BEGIN',
'SELECT ROUND(NVL(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY PRISES_H),0)) || '' prise/h'' AS MEDIAN_PRISES_H',
'  INTO L_BADGE_VALUE',
'  FROM PRODUCTIVITY_PICKING',
' WHERE TRUNC(ACTIVITY_DATE)= TRUNC(TO_DATE(:G_NOW_DATE, ''DD/MM/YYYY''));',
'',
'    htp.p(L_BADGE_VALUE);',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        L_BADGE_VALUE := 0;',
'        htp.p(L_BADGE_VALUE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>85678331263147305
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85679787257147319)
,p_process_sequence=>130
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DISPO_CARISTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_CARISTE_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'')',
'       AND RESOURCE_TYPE_CODE = ''C'';',
'ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_CARISTE_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'')',
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
'               AND "START" < TRUNC(TO_DATE(:P6_DATE, ''DD/MM/YYYY'')) + 1',
'               AND "END" > TO_DATE(:P6_DATE, ''DD/MM/YYYY'')',
'',
'        ),',
'    MODIFIED_TIMEWINDOWS AS (',
'        SELECT GREATEST("START",TO_DATE(:P6_DATE, ''DD/MM/YYYY'')) "START",',
'               LEAST("END",TRUNC(TO_DATE(:P6_DATE, ''DD/MM/YYYY''))+1) "END",',
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
'    htp.p(:P9000_CHART_CARISTE_MAX || ''h'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>85679787257147319
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85679926015147321)
,p_process_sequence=>140
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DISPO_PREP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P6_ACTIVITE_ANTERIEURES = ''N'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_PREP_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE = TO_DATE(:P6_DATE, ''DD/MM/YYYY'')',
'       AND RESOURCE_TYPE_CODE = ''P'';',
'ELSIF :P6_ACTIVITE_ANTERIEURES = ''Y'' THEN',
'    SELECT NVL(ROUND(SUM(REMAINING_LOAD_H)),0) AS REMAINING_LOAD_H',
'      INTO :P9000_CHART_PREP_VAL ',
'      FROM WORKLOAD_RESTYPE_DAY',
'     WHERE SITE_ID = :G_SITE',
'       AND LOAD_LATEST_DATE <= TO_DATE(:P6_DATE, ''DD/MM/YYYY'')',
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
'               AND "START" < TRUNC(TO_DATE(:P6_DATE, ''DD/MM/YYYY'')) + 1',
'               AND "END" > TO_DATE(:P6_DATE, ''DD/MM/YYYY'')',
'',
'        ),',
'    MODIFIED_TIMEWINDOWS AS (',
'        SELECT GREATEST("START",TO_DATE(:P6_DATE, ''DD/MM/YYYY'')) "START",',
'               LEAST("END",TRUNC(TO_DATE(:P6_DATE, ''DD/MM/YYYY''))+1) "END",',
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
'',
'    htp.p(:P9000_CHART_PREP_MAX || ''h'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>85679926015147321
);
wwv_flow_imp.component_end;
end;
/
