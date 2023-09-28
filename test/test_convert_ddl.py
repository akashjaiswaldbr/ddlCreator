from ddl_conv.convert_ddl import convert_ddl


class TestConvertDDL:
    def test_convert_ddl_oracle(self):
        ddl = '''CREATE TABLE my_table (
            id NUMBER, 
            name VARCHAR2(100),
            date_created DATE,
            content CLOB
            )
            '''.strip()

        delta_ddl = convert_ddl(ddl, 'oracle')

        expected_ddl = str('CREATE TABLE my_table ( id DOUBLE, name STRING, date_created TIMESTAMP, content STRING, )')

        print(delta_ddl)
        assert(delta_ddl == expected_ddl)

    def test_convert_ddl_nz(self):
        ddl = '''CREATE TABLE  WM_E_CONSOL_PERF_SMRY
(
     LOCATION_ID                            integer                    not null,
     WM_PERF_SMRY_TRAN_ID                   numeric(20,0)              not null,
     WM_WHSE                                character varying(3),
     WM_LOGIN_USER_ID                       character varying(50),
     WM_JOB_FUNCTION_NAME                   character varying(50),
     CLOCK_IN_TSTMP                         timestamp,
     CLOCK_OUT_TSTMP                        timestamp,
     CLOCK_IN_STATUS                        numeric(3,0),
     START_TSTMP                            timestamp,
     END_TSTMP                              timestamp,
     WHSE_TSTMP                             timestamp,
     TEAM_BEGIN_TSTMP                       timestamp,
     WM_SHIFT_CD                            character varying(5),
     WM_REPORT_SHIFT_CD                     character varying(5),
     WM_USER_ID                             character varying(50),
     WM_SPVSR_LOGIN_USER_ID                 character varying(50),
     WM_DEPT_CD                             character varying(10),
     WM_RESOURCE_GROUP_ID                   character varying(50),
     WM_COMP_ASSIGNMENT_ID                  character varying(45),
     WM_REFLECTIVE_CD                       character varying(15),
     WM_EMP_PERF_SMRY_ID                    numeric(20,0),
     WM_LOCN_GRP_ATTR                       character varying(24),
     WM_VERSION_ID                          numeric(6,0),
     WM_OPS_CD                              character varying(15),
     WM_TEAM_CD                             character varying(15),
     WM_REF_NBR                             character varying(50),
     DEFAULT_JF_FLAG                        numeric(9,0),
     EVENT_CNT                              numeric(9,0),
     TOTAL_SAM                              numeric(20,7),
     TOTAL_PAM                              numeric(13,5),
     TOTAL_TIME                             numeric(13,5),
     TOTAL_QTY                              numeric(13,5),
     OSDL                                   numeric(13,5),
     OSIL                                   numeric(13,5),
     NSDL                                   numeric(13,5),
     SIL                                    numeric(13,5),
     UDIL                                   numeric(13,5),
     UIL                                    numeric(13,5),
     ADJ_OSDL                               numeric(13,5),
     ADJ_OSIL                               numeric(13,5),
     ADJ_UDIL                               numeric(13,5),
     ADJ_NSDL                               numeric(13,5),
     PAID_BRK                               numeric(13,5),
     UNPAID_BRK                             numeric(13,5),
     REF_OSDL                               numeric(13,5),
     REF_OSIL                               numeric(13,5),
     REF_UDIL                               numeric(13,5),
     REF_NSDL                               numeric(13,5),
     REF_ADJ_OSDL                           numeric(13,5),
     REF_ADJ_OSIL                           numeric(13,5),
     REF_ADJ_UDIL                           numeric(13,5),
     REF_ADJ_NSDL                           numeric(13,5),
     REF_SAM                                numeric(13,5),
     REF_PAM                                numeric(13,5),
     LABOR_COST_RATE                        numeric(20,7),
     THRUPUT_MIN                            numeric(20,7),
     PAID_OVERLAP_OSDL                      numeric(20,7),
     UNPAID_OVERLAP_OSDL                    numeric(20,7),
     PAID_OVERLAP_NSDL                      numeric(20,7),
     UNPAID_OVERLAP_NSDL                    numeric(20,7),
     PAID_OVERLAP_OSIL                      numeric(20,7),
     UNPAID_OVERLAP_OSIL                    numeric(20,7),
     PAID_OVERLAP_UDIL                      numeric(20,7),
     UNPAID_OVERLAP_UDIL                    numeric(20,7),
     DISPLAY_UOM_QTY                        numeric(20,7),
     DISPLAY_UOM                            character varying(50),
     MISC_1                                 character varying(30),
     MISC_2                                 character varying(30),
     MISC_TXT_1                             character varying(20),
     MISC_TXT_2                             character varying(20),
     MISC_NBR_1                             numeric(13,5),
     MISC_NUM_1                             numeric(20,7),
     MISC_NUM_2                             numeric(20,7),
     LEVEL_1                                character varying(50),
     LEVEL_2                                character varying(50),
     LEVEL_3                                character varying(50),
     LEVEL_4                                character varying(50),
     LEVEL_5                                character varying(50),
     WM_EVNT_CTGRY_1                        character varying(50),
     WM_EVNT_CTGRY_2                        character varying(50),
     WM_EVNT_CTGRY_3                        character varying(50),
     WM_EVNT_CTGRY_4                        character varying(50),
     WM_EVNT_CTGRY_5                        character varying(50),
     WM_CREATE_TSTMP                        timestamp,
     WM_MOD_TSTMP                           timestamp,
     UPDATE_TSTMP                           timestamp                  not null,
     LOAD_TSTMP                             timestamp                  not null
)
DISTRIBUTE ON (WM_PERF_SMRY_TRAN_ID)
ORGANIZE   ON (LOCATION_ID)
;'''.strip()

        delta_ddl = convert_ddl(ddl, 'netezza')

        expected_ddl = str('CREATE TABLE my_table ( id NUMBER, name STRING, date_created DATE, content STRING, )')

        print(delta_ddl)
        assert(delta_ddl == expected_ddl)