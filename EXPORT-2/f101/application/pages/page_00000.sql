prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'N.JUREIDINI'
,p_last_upd_yyyymmddhh24miss=>'20250507101346'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84603514205671001)
,p_name=>'P0_SITE'
,p_item_sequence=>10
,p_item_display_point=>'AFTER_NAVIGATION_BAR'
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME AS D, ID AS R FROM CFG_SITE;'
,p_cHeight=>1
,p_display_when=>'9000'
,p_display_when_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_field_template=>wwv_flow_imp.id(69966542528826057)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84603964125671005)
,p_name=>'POPULATE_SITE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84604008488671006)
,p_event_id=>wwv_flow_imp.id(84603964125671005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':G_SITE := :P0_SITE;'
,p_attribute_02=>'P0_SITE'
,p_attribute_03=>'G_SITE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
