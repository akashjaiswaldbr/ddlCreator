

CREATE DATABASE EDWHIST ;

\echo *****  Creating table:  "F_BW_PURGE_DATES"

CREATE TABLE  F_BW_PURGE_DATES
(
     ACTUAL_YEAR                                    character varying(4)      not null,
     MONTH_COUNT                                    byteint                   not null,
     MIN_DAY    date                      not null,
     MAX_DAY    date                      not null,
     YEAR       integer                   not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_BW_PURGE_TABLES"

CREATE TABLE  F_BW_PURGE_TABLES
(
     NAME_OF_TABLE                                  character varying(100)    not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_CREDIT_MEMOS_2008"

CREATE TABLE  F_DAILY_AVEDA_CREDIT_MEMOS_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALES_ORDER_TYPE_KEY                       character varying(4)      not null,
     SAP_PURCHASE_ORDER_KEY                         character varying(35)     not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     SALES_ORG_CODE                                 character varying(4)      not null,
     DISTRIBUTION_CHANNEL_CODE                      character varying(2)      not null,
     AVEDA_CREDITM_QUANTITY                         integer                   not null,
     AVEDA_CREDITM_NATIVE_CURR_NET_VALUE            numeric(12,3)             not null,
     AVEDA_CREDITM_NATIVE_CURR_RETAIL_VALUE         numeric(12,3)             not null,
     AVEDA_CREDITM_NATIVE_CURR_FREIGHT_VALUE        numeric(12,3)             not null,
     AVEDA_CREDITM_USD_CURR_NET_VALUE               numeric(12,3)             not null,
     AVEDA_CREDITM_USD_CURR_RETAIL_VALUE            numeric(12,3)             not null,
     AVEDA_CREDITM_USD_CURR_FREIGHT_VALUE           numeric(12,3)             not null,
     SAP_ORDER_REASON_CODE                          character varying(3)      not null,
     SAP_ITEM_STATUS_CODE                           character varying(2)      not null,
     SAP_SUB_INVENTORY_TYPE_CODE                    character varying(18)     not null,
     SAP_ITEM_USAGE_IND                             character varying(3)      not null,
     ORIGINAL_CREDITM_NATIVE_CURR_RETAIL_VALUE      numeric(12,3)             not null,
     ORIGINAL_CREDITM_USD_CURR_RETAIL_VALUE         numeric(12,3)             not null,
     SUGGESTED_RETAIL_PRICE                         numeric(9,3)              not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_CREDIT_MEMOS_2009"

CREATE TABLE  F_DAILY_AVEDA_CREDIT_MEMOS_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALES_ORDER_TYPE_KEY                       character varying(4)      not null,
     SAP_PURCHASE_ORDER_KEY                         character varying(35)     not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     SALES_ORG_CODE                                 character varying(4)      not null,
     DISTRIBUTION_CHANNEL_CODE                      character varying(2)      not null,
     AVEDA_CREDITM_QUANTITY                         integer                   not null,
     AVEDA_CREDITM_NATIVE_CURR_NET_VALUE            numeric(12,3)             not null,
     AVEDA_CREDITM_NATIVE_CURR_RETAIL_VALUE         numeric(12,3)             not null,
     AVEDA_CREDITM_NATIVE_CURR_FREIGHT_VALUE        numeric(12,3)             not null,
     AVEDA_CREDITM_USD_CURR_NET_VALUE               numeric(12,3)             not null,
     AVEDA_CREDITM_USD_CURR_RETAIL_VALUE            numeric(12,3)             not null,
     AVEDA_CREDITM_USD_CURR_FREIGHT_VALUE           numeric(12,3)             not null,
     SAP_ORDER_REASON_CODE                          character varying(3)      not null,
     SAP_ITEM_STATUS_CODE                           character varying(2)      not null,
     SAP_SUB_INVENTORY_TYPE_CODE                    character varying(18)     not null,
     SAP_ITEM_USAGE_IND                             character varying(3)      not null,
     ORIGINAL_CREDITM_NATIVE_CURR_RETAIL_VALUE      numeric(12,3)             not null,
     ORIGINAL_CREDITM_USD_CURR_RETAIL_VALUE         numeric(12,3)             not null,
     SUGGESTED_RETAIL_PRICE                         numeric(9,3)              not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_RETURNS_2008"

CREATE TABLE  F_DAILY_AVEDA_RETURNS_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALES_ORDER_TYPE_KEY                       character varying(4)      not null,
     SAP_PURCHASE_ORDER_KEY                         character varying(35)     not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     SHIPMENT_DATA_DESC_ID                          smallint                  not null,
     SALES_ORG_CODE                                 character varying(4)      not null,
     DISTRIBUTION_CHANNEL_CODE                      character varying(2)      not null,
     AVEDA_RETURN_QUANTITY                          integer                   not null,
     AVEDA_RETURN_NATIVE_CURR_NET_VALUE             numeric(12,3)             not null,
     AVEDA_RETURN_NATIVE_CURR_RETAIL_VALUE          numeric(12,3)             not null,
     AVEDA_RETURN_NATIVE_CURR_FREIGHT_VALUE         numeric(12,3)             not null,
     AVEDA_RETURN_USD_CURR_NET_VALUE                numeric(12,3)             not null,
     AVEDA_RETURN_USD_CURR_RETAIL_VALUE             numeric(12,3)             not null,
     AVEDA_RETURN_USD_CURR_FREIGHT_VALUE            numeric(12,3)             not null,
     SAP_ORDER_REASON_CODE                          character varying(3)      not null,
     SAP_ITEM_STATUS_CODE                           character varying(2)      not null,
     SAP_SUB_INVENTORY_TYPE_CODE                    character varying(18)     not null,
     SAP_ITEM_USAGE_IND                             character varying(3)      not null,
     ORIGINAL_RETURN_NATIVE_CURR_RETAIL_VALUE       numeric(12,3)             not null,
     ORIGINAL_RETURN_USD_CURR_RETAIL_VALUE          numeric(12,3)             not null,
     SUGGESTED_RETAIL_PRICE                         numeric(9,3)              not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_RETURNS_2009"

CREATE TABLE  F_DAILY_AVEDA_RETURNS_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALES_ORDER_TYPE_KEY                       character varying(4)      not null,
     SAP_PURCHASE_ORDER_KEY                         character varying(35)     not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     SHIPMENT_DATA_DESC_ID                          smallint                  not null,
     SALES_ORG_CODE                                 character varying(4)      not null,
     DISTRIBUTION_CHANNEL_CODE                      character varying(2)      not null,
     AVEDA_RETURN_QUANTITY                          integer                   not null,
     AVEDA_RETURN_NATIVE_CURR_NET_VALUE             numeric(12,3)             not null,
     AVEDA_RETURN_NATIVE_CURR_RETAIL_VALUE          numeric(12,3)             not null,
     AVEDA_RETURN_NATIVE_CURR_FREIGHT_VALUE         numeric(12,3)             not null,
     AVEDA_RETURN_USD_CURR_NET_VALUE                numeric(12,3)             not null,
     AVEDA_RETURN_USD_CURR_RETAIL_VALUE             numeric(12,3)             not null,
     AVEDA_RETURN_USD_CURR_FREIGHT_VALUE            numeric(12,3)             not null,
     SAP_ORDER_REASON_CODE                          character varying(3)      not null,
     SAP_ITEM_STATUS_CODE                           character varying(2)      not null,
     SAP_SUB_INVENTORY_TYPE_CODE                    character varying(18)     not null,
     SAP_ITEM_USAGE_IND                             character varying(3)      not null,
     ORIGINAL_RETURN_NATIVE_CURR_RETAIL_VALUE       numeric(12,3)             not null,
     ORIGINAL_RETURN_USD_CURR_RETAIL_VALUE          numeric(12,3)             not null,
     SUGGESTED_RETAIL_PRICE                         numeric(9,3)              not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_INVENTORY_2008"

CREATE TABLE  F_DAILY_AVEDA_SALON_INVENTORY_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     AVEDA_ONHAND_UNITS                             integer                   not null,
     AVEDA_ONHAND_DOLLARS                           numeric(13,2)             not null,
     AVEDA_ONHAND_NET_DOLLARS                       numeric(13,2)             not null,
     AVEDA_ONHAND_STATUS                            smallint                  not null,
     AVEDA_ONHAND_MINIMUM                           smallint                  not null,
     AVEDA_ONHAND_MAXIMUM                           smallint                  not null,
     ROW_DELETE_FLAG                                character varying(1)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_INVENTORY_2009"

CREATE TABLE  F_DAILY_AVEDA_SALON_INVENTORY_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     AVEDA_ONHAND_UNITS                             integer                   not null,
     AVEDA_ONHAND_DOLLARS                           numeric(13,2)             not null,
     AVEDA_ONHAND_NET_DOLLARS                       numeric(13,2)             not null,
     AVEDA_ONHAND_STATUS                            smallint                  not null,
     AVEDA_ONHAND_MINIMUM                           smallint                  not null,
     AVEDA_ONHAND_MAXIMUM                           smallint                  not null,
     ROW_DELETE_FLAG                                character varying(1)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_INVENTORY_F2007_F2008"

CREATE TABLE  F_DAILY_AVEDA_SALON_INVENTORY_F2007_F2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     AVEDA_ONHAND_UNITS                             integer                   not null,
     AVEDA_ONHAND_DOLLARS                           numeric(13,2)             not null,
     AVEDA_ONHAND_NET_DOLLARS                       numeric(13,2)             not null,
     AVEDA_ONHAND_STATUS                            smallint                  not null,
     AVEDA_ONHAND_MINIMUM                           smallint                  not null,
     AVEDA_ONHAND_MAXIMUM                           smallint                  not null,
     ROW_DELETE_FLAG                                character varying(1)      not null
)
DISTRIBUTE ON (DAY_KEY)
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_INVENTORY_F2009_F2010"

CREATE TABLE  F_DAILY_AVEDA_SALON_INVENTORY_F2009_F2010
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     AVEDA_ONHAND_UNITS                             integer                   not null,
     AVEDA_ONHAND_DOLLARS                           numeric(13,2)             not null,
     AVEDA_ONHAND_NET_DOLLARS                       numeric(13,2)             not null,
     AVEDA_ONHAND_STATUS                            smallint                  not null,
     AVEDA_ONHAND_MINIMUM                           smallint                  not null,
     AVEDA_ONHAND_MAXIMUM                           smallint                  not null,
     ROW_DELETE_FLAG                                character varying(1)      not null
)
DISTRIBUTE ON (DAY_KEY)
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_INV_REPORTED_2008"

CREATE TABLE  F_DAILY_AVEDA_SALON_INV_REPORTED_2008
(
     DAY_KEY    date                      not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     AVEDA_ONHAND_REPORTED                          smallint                  not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_INV_REPORTED_2009"

CREATE TABLE  F_DAILY_AVEDA_SALON_INV_REPORTED_2009
(
     DAY_KEY    date                      not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     AVEDA_ONHAND_REPORTED                          smallint                  not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_SALES_2008"

CREATE TABLE  F_DAILY_AVEDA_SALON_SALES_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALON_SALES_RECORD_TYPE                    character varying(1)      not null,
     AVEDA_SALON_TRAN_NUM_KEY                       character varying(20)     not null,
     STAFF_ID                                       character varying(27)     not null,
     SALON_SALES_UNITS                              integer                   not null,
     SALON_GROSS_SALES_DOLLARS                      numeric(13,2)             not null,
     CUSTOMER_DISCOUNT_DOLLARS                      numeric(13,2)             not null,
     SALON_NET_SALES_DOLLARS                        numeric(13,2)             not null,
     DISTRIBUTOR_COST_DOLLARS                       numeric(13,2)             not null,
     SALON_BIZ_UPC                                  character varying(20)     not null,
     AVEDA_SALON_DOMAIN_ID                          integer                   not null,
     ROW_DELETE_FLAG                                character varying(1)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SALON_SALES_2009"

CREATE TABLE  F_DAILY_AVEDA_SALON_SALES_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALON_SALES_RECORD_TYPE                    character varying(1)      not null,
     AVEDA_SALON_TRAN_NUM_KEY                       character varying(20)     not null,
     STAFF_ID                                       character varying(27)     not null,
     SALON_SALES_UNITS                              integer                   not null,
     SALON_GROSS_SALES_DOLLARS                      numeric(13,2)             not null,
     CUSTOMER_DISCOUNT_DOLLARS                      numeric(13,2)             not null,
     SALON_NET_SALES_DOLLARS                        numeric(13,2)             not null,
     DISTRIBUTOR_COST_DOLLARS                       numeric(13,2)             not null,
     SALON_BIZ_UPC                                  character varying(20)     not null,
     AVEDA_SALON_DOMAIN_ID                          integer                   not null,
     ROW_DELETE_FLAG                                character varying(1)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SHIPMENTS_2008"

CREATE TABLE  F_DAILY_AVEDA_SHIPMENTS_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALES_ORDER_TYPE_KEY                       character varying(4)      not null,
     SAP_PURCHASE_ORDER_KEY                         character varying(35)     not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     SHIPMENT_DATA_DESC_ID                          smallint                  not null,
     SALES_ORG_CODE                                 character varying(4)      not null,
     DISTRIBUTION_CHANNEL_CODE                      character varying(2)      not null,
     AVEDA_SHIPMENT_QUANTITY                        integer                   not null,
     AVEDA_SHIPMENT_NATIVE_CURR_NET_VALUE           numeric(12,3)             not null,
     AVEDA_SHIPMENT_NATIVE_CURR_RETAIL_VALUE        numeric(12,3)             not null,
     AVEDA_SHIPMENT_NATIVE_CURR_FREIGHT_VALUE       numeric(12,3)             not null,
     AVEDA_SHIPMENT_USD_CURR_NET_VALUE              numeric(12,3)             not null,
     AVEDA_SHIPMENT_USD_CURR_RETAIL_VALUE           numeric(12,3)             not null,
     AVEDA_SHIPMENT_USD_CURR_FREIGHT_VALUE          numeric(12,3)             not null,
     SAP_ORDER_REASON_CODE                          character varying(3)      not null,
     SAP_ITEM_STATUS_CODE                           character varying(2)      not null,
     SAP_SUB_INVENTORY_TYPE_CODE                    character varying(18)     not null,
     SAP_ITEM_USAGE_IND                             character varying(3)      not null,
     ORIGINAL_SHIPMENT_NATIVE_CURR_RETAIL_VALUE     numeric(12,3)             not null,
     ORIGINAL_SHIPMENT_USD_CURR_RETAIL_VALUE        numeric(12,3)             not null,
     SUGGESTED_RETAIL_PRICE                         numeric(9,3)              not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_AVEDA_SHIPMENTS_2009"

CREATE TABLE  F_DAILY_AVEDA_SHIPMENTS_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     CURRENCY_CODE_KEY                              character varying(5)      not null,
     SAP_SALES_ORDER_TYPE_KEY                       character varying(4)      not null,
     SAP_PURCHASE_ORDER_KEY                         character varying(35)     not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     SHIPMENT_DATA_DESC_ID                          smallint                  not null,
     SALES_ORG_CODE                                 character varying(4)      not null,
     DISTRIBUTION_CHANNEL_CODE                      character varying(2)      not null,
     AVEDA_SHIPMENT_QUANTITY                        integer                   not null,
     AVEDA_SHIPMENT_NATIVE_CURR_NET_VALUE           numeric(12,3)             not null,
     AVEDA_SHIPMENT_NATIVE_CURR_RETAIL_VALUE        numeric(12,3)             not null,
     AVEDA_SHIPMENT_NATIVE_CURR_FREIGHT_VALUE       numeric(12,3)             not null,
     AVEDA_SHIPMENT_USD_CURR_NET_VALUE              numeric(12,3)             not null,
     AVEDA_SHIPMENT_USD_CURR_RETAIL_VALUE           numeric(12,3)             not null,
     AVEDA_SHIPMENT_USD_CURR_FREIGHT_VALUE          numeric(12,3)             not null,
     SAP_ORDER_REASON_CODE                          character varying(3)      not null,
     SAP_ITEM_STATUS_CODE                           character varying(2)      not null,
     SAP_SUB_INVENTORY_TYPE_CODE                    character varying(18)     not null,
     SAP_ITEM_USAGE_IND                             character varying(3)      not null,
     ORIGINAL_SHIPMENT_NATIVE_CURR_RETAIL_VALUE     numeric(12,3)             not null,
     ORIGINAL_SHIPMENT_USD_CURR_RETAIL_VALUE        numeric(12,3)             not null,
     SUGGESTED_RETAIL_PRICE                         numeric(9,3)              not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_GOAL_DETAIL_2008"

CREATE TABLE  F_DAILY_GOAL_DETAIL_2008
(
     DAY_KEY    date                      not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     REPORTING_LINE_ID                              smallint                  not null,
     GOAL_LEVEL_TYPE                                character varying(1)      not null,
     GOAL_DOLLARS                                   numeric(15,4)             not null,
     GOAL_STRETCH_DOLLARS                           numeric(15,4)             not null,
     GOAL_LOCKED                                    smallint                  not null,
     GOAL_LAST_UPDATED                              timestamp                 not null,
     USER_KEY                                       character varying(10)     not null,
     DOOR_CLOSE_STATUS                              character varying(1)      not null,
     DOOR_CLOSE_DATE                                date                      not null,
     SAP_CLOSE_REASON_CODE                          character varying(3)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_GOAL_DETAIL_2009"

CREATE TABLE  F_DAILY_GOAL_DETAIL_2009
(
     DAY_KEY    date                      not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     REPORTING_LINE_ID                              smallint                  not null,
     GOAL_LEVEL_TYPE                                character varying(1)      not null,
     GOAL_DOLLARS                                   numeric(15,4)             not null,
     GOAL_STRETCH_DOLLARS                           numeric(15,4)             not null,
     GOAL_LOCKED                                    smallint                  not null,
     GOAL_LAST_UPDATED                              timestamp                 not null,
     USER_KEY                                       character varying(10)     not null,
     DOOR_CLOSE_STATUS                              character varying(1)      not null,
     DOOR_CLOSE_DATE                                date                      not null,
     SAP_CLOSE_REASON_CODE                          character varying(3)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_MILITARY_SHIPMENTS_2010"

CREATE TABLE  F_DAILY_MILITARY_SHIPMENTS_2010
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     MILITARY_SHIPMENT_UNITS                        integer                   not null,
     MILITARY_SHIPMENT_DOLLARS                      numeric(13,2)             not null,
     MILITARY_SHIPMENT_EDI_UNITS                    integer                   not null,
     MILITARY_SHIPMENT_EDI_DOLLARS                  numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     MILITARY_SHIPMENT_NET_DOLLARS                  numeric(13,2)             not null,
     MILITARY_SHIPMENT_EDI_NET_DOLLARS              numeric(13,2)             not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null,
     SOURCE_ID                                      character varying(3)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_MILITARY_SHIPMENTS_2011"

CREATE TABLE  F_DAILY_MILITARY_SHIPMENTS_2011
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     MILITARY_SHIPMENT_UNITS                        integer                   not null,
     MILITARY_SHIPMENT_DOLLARS                      numeric(13,2)             not null,
     MILITARY_SHIPMENT_EDI_UNITS                    integer                   not null,
     MILITARY_SHIPMENT_EDI_DOLLARS                  numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     MILITARY_SHIPMENT_NET_DOLLARS                  numeric(13,2)             not null,
     MILITARY_SHIPMENT_EDI_NET_DOLLARS              numeric(13,2)             not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null,
     SOURCE_ID                                      character varying(3)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2005"

CREATE TABLE  F_DAILY_RETURNS_2005
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2006"

CREATE TABLE  F_DAILY_RETURNS_2006
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2007"

CREATE TABLE  F_DAILY_RETURNS_2007
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2008"

CREATE TABLE  F_DAILY_RETURNS_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2009"

CREATE TABLE  F_DAILY_RETURNS_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2010"

CREATE TABLE  F_DAILY_RETURNS_2010
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RETURNS_2011"

CREATE TABLE  F_DAILY_RETURNS_2011
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RETURN_TYPE_KEY                                character varying(9)      not null,
     RETURN_UNITS                                   integer                   not null,
     RETURN_DOLLARS                                 numeric(13,2)             not null,
     RETURN_LAST_MODIFIED_DATE                      timestamp                 not null,
     RETURN_NET_DOLLARS                             numeric(13,2)             not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null,
     SOURCE_ID                                      character varying(3)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RTL_SALES_EDI_FULL_20120702"

CREATE TABLE  F_DAILY_RTL_SALES_EDI_FULL_20120702
(
     CALENDAR_DAY                                   integer                   not null,
     DAY_KEY    date                      not null,
     EAN_CODE                                       double precision          not null,
     PRODUCT_CODE_06                                integer                   not null,
     STORE_ID                                       integer                   not null,
     PRICE_TYPE_ID                                  character varying(10)     not null,
     CURRENCY_CODE                                  character varying(3)      not null,
     DATA_SOURCE_ID                                 integer,
     UNITS      numeric(38,0),
     VALUE_USD                                      numeric(38,2),
     VALUE_LOCAL_CURRENCY                           numeric(38,2),
     UNIT_PRICE_USD                                 numeric(9,2),
     UNIT_PRICE_NATIVE                              numeric(9,2),
     UNIT_PRICE_USD_CUST                            numeric(9,2),
     UNIT_PRICE_NATIVE_CUST                         numeric(9,2),
     TRANSACTION_NUMBER                             bigint                    not null,
     NUANCE_SITE_ID                                 character varying(30)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_RTL_SALES_EDI_FULL_20121022"

CREATE TABLE  F_DAILY_RTL_SALES_EDI_FULL_20121022
(
     CALENDAR_DAY                                   integer                   not null,
     DAY_KEY    date                      not null,
     EAN_CODE                                       double precision          not null,
     PRODUCT_CODE_06                                integer                   not null,
     STORE_ID                                       integer                   not null,
     PRICE_TYPE_ID                                  character varying(10)     not null,
     CURRENCY_CODE                                  character varying(3)      not null,
     DATA_SOURCE_ID                                 integer,
     UNITS      numeric(38,0),
     VALUE_USD                                      numeric(38,2),
     VALUE_LOCAL_CURRENCY                           numeric(38,2),
     UNIT_PRICE_USD                                 numeric(9,2),
     UNIT_PRICE_NATIVE                              numeric(9,2),
     UNIT_PRICE_USD_CUST                            numeric(9,2),
     UNIT_PRICE_NATIVE_CUST                         numeric(9,2),
     TRANSACTION_NUMBER                             bigint                    not null,
     NUANCE_SITE_ID                                 character varying(30)     not null,
     VALUE_USD_HISTORICAL                           numeric(38,2),
     EAN_CODE_ORIGINAL                              double precision          not null
)
DISTRIBUTE ON (CALENDAR_DAY)
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2005"

CREATE TABLE  F_DAILY_SHIPMENTS_2005
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2006"

CREATE TABLE  F_DAILY_SHIPMENTS_2006
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2007"

CREATE TABLE  F_DAILY_SHIPMENTS_2007
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2008"

CREATE TABLE  F_DAILY_SHIPMENTS_2008
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2009"

CREATE TABLE  F_DAILY_SHIPMENTS_2009
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2010"

CREATE TABLE  F_DAILY_SHIPMENTS_2010
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_DAILY_SHIPMENTS_2011"

CREATE TABLE  F_DAILY_SHIPMENTS_2011
(
     DAY_KEY    date                      not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SHIPMENT_ORDER_TYPE_KEY                        integer                   not null,
     SHIPMENT_UNITS                                 integer                   not null,
     SHIPMENT_DOLLARS                               numeric(13,2)             not null,
     SHIPMENT_EDI_UNITS                             integer                   not null,
     SHIPMENT_EDI_DOLLARS                           numeric(13,2)             not null,
     SHIPMENT_LAST_MODIFIED_DATE                    timestamp                 not null,
     SHIPMENT_NET_DOLLARS                           numeric(13,2),
     SHIPMENT_EDI_NET_DOLLARS                       numeric(13,2),
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null,
     SAP_SALES_ORDER_NUMBER_KEY                     character varying(10)     not null,
     SAP_DOCUMENT_NUMBER_KEY                        character varying(10)     not null,
     SAP_ORDER_LINE_NUMBER                          integer                   not null,
     EVENT_NUMBER                                   character varying(28)     not null,
     EVENT_CLASSIFICATION                           character varying(5)      not null,
     SOURCE_ID                                      character varying(3)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_MONTHLY_FIELD_REPORTED_NEW_RECEIPTS"

CREATE TABLE  F_MONTHLY_FIELD_REPORTED_NEW_RECEIPTS
(
     RETAILER_MONTH                                 integer                   not null,
     REPORTING_LINE_ID                              smallint                  not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     FIELD_REPORTED_UNITS                           integer                   not null,
     FIELD_REPORTED_DOLLARS                         numeric(13,2)             not null,
     FLD_RPT_LAST_MODIFIED_DATE                     timestamp                 not null
)
DISTRIBUTE ON (RETAILER_MONTH)
;

\echo
\echo *****  Creating table:  "F_ONHAND_REPORTED_2014F"

CREATE TABLE  F_ONHAND_REPORTED_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ONHAND_DOOR_REPT                               smallint                  not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_ONHAND_REPORTED_2014S"

CREATE TABLE  F_ONHAND_REPORTED_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ONHAND_DOOR_REPT                               smallint                  not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_ONHAND_REPORTED_2015F"

CREATE TABLE  F_ONHAND_REPORTED_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ONHAND_DOOR_REPT                               smallint                  not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_ONHAND_REPORTED_2015S"

CREATE TABLE  F_ONHAND_REPORTED_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ONHAND_DOOR_REPT                               smallint                  not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_ONHAND_REPORTED_2016S"

CREATE TABLE  F_ONHAND_REPORTED_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ONHAND_DOOR_REPT                               smallint                  not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_RPL_PURGE_DATES"

CREATE TABLE  F_RPL_PURGE_DATES
(
     RETAILER_SEASON_ID                             character varying(5)      not null,
     WEEK_COUNT                                     byteint                   not null,
     MIN_WEEK                                       integer                   not null,
     MAX_WEEK                                       integer                   not null,
     SEASON     byteint                   not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_RPL_PURGE_TABLES"

CREATE TABLE  F_RPL_PURGE_TABLES
(
     NAME_OF_TABLE                                  character varying(100)    not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_SALES_PURGE_DATES"

CREATE TABLE  F_SALES_PURGE_DATES
(
     RETAILER_YEAR                                  character varying(4)      not null,
     WEEK_COUNT                                     byteint                   not null,
     MIN_WEEK                                       integer                   not null,
     MAX_WEEK                                       integer                   not null,
     YEAR       byteint                   not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_SALES_PURGE_TABLES"

CREATE TABLE  F_SALES_PURGE_TABLES
(
     NAME_OF_TABLE                                  character varying(100)    not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_SHIP_PURGE_DATES"

CREATE TABLE  F_SHIP_PURGE_DATES
(
     ACTUAL_YEAR                                    character varying(4)      not null,
     MONTH_COUNT                                    byteint                   not null,
     MIN_DAY    date                      not null,
     MAX_DAY    date                      not null,
     YEAR       integer                   not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_SHIP_PURGE_TABLES"

CREATE TABLE  F_SHIP_PURGE_TABLES
(
     NAME_OF_TABLE                                  character varying(100)    not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_INVENTORY_2014F"

CREATE TABLE  F_WEEKLY_EXCESS_INVENTORY_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXC_REPLENISH_STATUS                           character varying(1)      not null,
     EXC_SPEED                                      character varying(1)      not null,
     EXC_MUST_HAVE_IND                              character varying(1)      not null,
     EXC_STOP_FLAG                                  character varying(1)      not null,
     WEEKS_OF_SUPPLY                                smallint                  not null,
     NUMBER_OF_WEEKS                                smallint                  not null,
     EXC_UNIT_PACK_QTY                              smallint                  not null,
     EXCESS_BYPASSED_FLAG                           character varying(1)      not null,
     EXC_DESEASONALIZED_DEMAND                      numeric(7,1)              not null,
     EI_ON_HAND_UNITS                               integer                   not null,
     EI_ON_HAND_DOLLARS                             numeric(13,2)             not null,
     EI_ON_ORDER_UNITS                              integer                   not null,
     EI_ON_ORDER_DOLLARS                            numeric(13,2)             not null,
     WOS_UNITS                                      integer                   not null,
     WOS_DOLLARS                                    numeric(13,2)             not null,
     EXCESS_UNITS                                   integer                   not null,
     EXCESS_DOLLARS                                 numeric(13,2)             not null,
     EXCESS_INV_LAST_MODIFIED_DATE                  timestamp                 not null,
     WEEKS_OF_SUPPLY_AVG_IND                        character varying(1),
     EXCESS_ADJ_UNITS                               integer                   not null,
     EXCESS_ADJ_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_INVENTORY_2014S"

CREATE TABLE  F_WEEKLY_EXCESS_INVENTORY_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXC_REPLENISH_STATUS                           character varying(1)      not null,
     EXC_SPEED                                      character varying(1)      not null,
     EXC_MUST_HAVE_IND                              character varying(1)      not null,
     EXC_STOP_FLAG                                  character varying(1)      not null,
     WEEKS_OF_SUPPLY                                smallint                  not null,
     NUMBER_OF_WEEKS                                smallint                  not null,
     EXC_UNIT_PACK_QTY                              smallint                  not null,
     EXCESS_BYPASSED_FLAG                           character varying(1)      not null,
     EXC_DESEASONALIZED_DEMAND                      numeric(7,1)              not null,
     EI_ON_HAND_UNITS                               integer                   not null,
     EI_ON_HAND_DOLLARS                             numeric(13,2)             not null,
     EI_ON_ORDER_UNITS                              integer                   not null,
     EI_ON_ORDER_DOLLARS                            numeric(13,2)             not null,
     WOS_UNITS                                      integer                   not null,
     WOS_DOLLARS                                    numeric(13,2)             not null,
     EXCESS_UNITS                                   integer                   not null,
     EXCESS_DOLLARS                                 numeric(13,2)             not null,
     EXCESS_INV_LAST_MODIFIED_DATE                  timestamp                 not null,
     WEEKS_OF_SUPPLY_AVG_IND                        character varying(1),
     EXCESS_ADJ_UNITS                               integer                   not null,
     EXCESS_ADJ_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_INVENTORY_2015F"

CREATE TABLE  F_WEEKLY_EXCESS_INVENTORY_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXC_REPLENISH_STATUS                           character varying(1)      not null,
     EXC_SPEED                                      character varying(1)      not null,
     EXC_MUST_HAVE_IND                              character varying(1)      not null,
     EXC_STOP_FLAG                                  character varying(1)      not null,
     WEEKS_OF_SUPPLY                                smallint                  not null,
     NUMBER_OF_WEEKS                                smallint                  not null,
     EXC_UNIT_PACK_QTY                              smallint                  not null,
     EXCESS_BYPASSED_FLAG                           character varying(1)      not null,
     EXC_DESEASONALIZED_DEMAND                      numeric(7,1)              not null,
     EI_ON_HAND_UNITS                               integer                   not null,
     EI_ON_HAND_DOLLARS                             numeric(13,2)             not null,
     EI_ON_ORDER_UNITS                              integer                   not null,
     EI_ON_ORDER_DOLLARS                            numeric(13,2)             not null,
     WOS_UNITS                                      integer                   not null,
     WOS_DOLLARS                                    numeric(13,2)             not null,
     EXCESS_UNITS                                   integer                   not null,
     EXCESS_DOLLARS                                 numeric(13,2)             not null,
     EXCESS_INV_LAST_MODIFIED_DATE                  timestamp                 not null,
     WEEKS_OF_SUPPLY_AVG_IND                        character varying(1),
     EXCESS_ADJ_UNITS                               integer                   not null,
     EXCESS_ADJ_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_INVENTORY_2015S"

CREATE TABLE  F_WEEKLY_EXCESS_INVENTORY_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXC_REPLENISH_STATUS                           character varying(1)      not null,
     EXC_SPEED                                      character varying(1)      not null,
     EXC_MUST_HAVE_IND                              character varying(1)      not null,
     EXC_STOP_FLAG                                  character varying(1)      not null,
     WEEKS_OF_SUPPLY                                smallint                  not null,
     NUMBER_OF_WEEKS                                smallint                  not null,
     EXC_UNIT_PACK_QTY                              smallint                  not null,
     EXCESS_BYPASSED_FLAG                           character varying(1)      not null,
     EXC_DESEASONALIZED_DEMAND                      numeric(7,1)              not null,
     EI_ON_HAND_UNITS                               integer                   not null,
     EI_ON_HAND_DOLLARS                             numeric(13,2)             not null,
     EI_ON_ORDER_UNITS                              integer                   not null,
     EI_ON_ORDER_DOLLARS                            numeric(13,2)             not null,
     WOS_UNITS                                      integer                   not null,
     WOS_DOLLARS                                    numeric(13,2)             not null,
     EXCESS_UNITS                                   integer                   not null,
     EXCESS_DOLLARS                                 numeric(13,2)             not null,
     EXCESS_INV_LAST_MODIFIED_DATE                  timestamp                 not null,
     WEEKS_OF_SUPPLY_AVG_IND                        character varying(1),
     EXCESS_ADJ_UNITS                               integer                   not null,
     EXCESS_ADJ_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_INVENTORY_2016S"

CREATE TABLE  F_WEEKLY_EXCESS_INVENTORY_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXC_REPLENISH_STATUS                           character varying(1)      not null,
     EXC_SPEED                                      character varying(1)      not null,
     EXC_MUST_HAVE_IND                              character varying(1)      not null,
     EXC_STOP_FLAG                                  character varying(1)      not null,
     WEEKS_OF_SUPPLY                                smallint                  not null,
     NUMBER_OF_WEEKS                                smallint                  not null,
     EXC_UNIT_PACK_QTY                              smallint                  not null,
     EXCESS_BYPASSED_FLAG                           character varying(1)      not null,
     EXC_DESEASONALIZED_DEMAND                      numeric(7,1)              not null,
     EI_ON_HAND_UNITS                               integer                   not null,
     EI_ON_HAND_DOLLARS                             numeric(13,2)             not null,
     EI_ON_ORDER_UNITS                              integer                   not null,
     EI_ON_ORDER_DOLLARS                            numeric(13,2)             not null,
     WOS_UNITS                                      integer                   not null,
     WOS_DOLLARS                                    numeric(13,2)             not null,
     EXCESS_UNITS                                   integer                   not null,
     EXCESS_DOLLARS                                 numeric(13,2)             not null,
     EXCESS_INV_LAST_MODIFIED_DATE                  timestamp                 not null,
     WEEKS_OF_SUPPLY_AVG_IND                        character varying(1),
     EXCESS_ADJ_UNITS                               integer                   not null,
     EXCESS_ADJ_DOLLARS                             numeric(13,2)             not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_REPORTED_2014F"

CREATE TABLE  F_WEEKLY_EXCESS_REPORTED_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXCESS_LAST_MODIFIED_DATE                      timestamp                 not null,
     EX_INV_DOOR_REPT                               smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_REPORTED_2014S"

CREATE TABLE  F_WEEKLY_EXCESS_REPORTED_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXCESS_LAST_MODIFIED_DATE                      timestamp                 not null,
     EX_INV_DOOR_REPT                               smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_REPORTED_2015F"

CREATE TABLE  F_WEEKLY_EXCESS_REPORTED_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXCESS_LAST_MODIFIED_DATE                      timestamp                 not null,
     EX_INV_DOOR_REPT                               smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_REPORTED_2015S"

CREATE TABLE  F_WEEKLY_EXCESS_REPORTED_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXCESS_LAST_MODIFIED_DATE                      timestamp                 not null,
     EX_INV_DOOR_REPT                               smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_EXCESS_REPORTED_2016S"

CREATE TABLE  F_WEEKLY_EXCESS_REPORTED_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EXCESS_LAST_MODIFIED_DATE                      timestamp                 not null,
     EX_INV_DOOR_REPT                               smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_FIELD_REPORTED_20160618_318PM"

CREATE TABLE  F_WEEKLY_FIELD_REPORTED_20160618_318PM
(
     RETAILER_WEEK                                  integer                   not null,
     REPORTING_LINE_ID                              smallint                  not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     FIELD_REPORTED_UNITS                           integer                   not null,
     FIELD_REPORTED_DOLLARS                         numeric(13,2)             not null,
     FLD_RPT_LAST_MODIFIED_DATE                     timestamp                 not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2014F"

CREATE TABLE  F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_EOW_ON_HAND_UNITS                     integer                   not null,
     MILITARY_EOW_ON_HAND_DOLLARS                   numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     MILITARY_ONHAND_REPLENISH_STATUS               character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2014S"

CREATE TABLE  F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_EOW_ON_HAND_UNITS                     integer                   not null,
     MILITARY_EOW_ON_HAND_DOLLARS                   numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     MILITARY_ONHAND_REPLENISH_STATUS               character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2015F"

CREATE TABLE  F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_EOW_ON_HAND_UNITS                     integer                   not null,
     MILITARY_EOW_ON_HAND_DOLLARS                   numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     MILITARY_ONHAND_REPLENISH_STATUS               character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2015S"

CREATE TABLE  F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_EOW_ON_HAND_UNITS                     integer                   not null,
     MILITARY_EOW_ON_HAND_DOLLARS                   numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     MILITARY_ONHAND_REPLENISH_STATUS               character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2016S"

CREATE TABLE  F_WEEKLY_MILITARY_REPLENISHMENT_ORDERS_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_EOW_ON_HAND_UNITS                     integer                   not null,
     MILITARY_EOW_ON_HAND_DOLLARS                   numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     MILITARY_ONHAND_REPLENISH_STATUS               character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_SALES_2010"

CREATE TABLE  F_WEEKLY_MILITARY_SALES_2010
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_GROSS_SALES_UNITS                     integer                   not null,
     MILITARY_GROSS_SALES_DOLLARS                   numeric(13,2)             not null,
     MILITARY_CUSTOMER_RETURN_UNITS                 integer                   not null,
     MILITARY_CUSTOMER_RETURN_DOLLARS               numeric(13,2)             not null,
     MILITARY_NET_SELLTHRU_UNITS                    integer                   not null,
     MILITARY_NET_SELLTHRU_DOLLARS                  numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     MILITARY_DISCOUNT_GROSS_SALES_DOLLARS          numeric(13,2)             not null,
     MILITARY_DISCOUNT_CUSTOMER_RETURN_DOLLARS      numeric(13,2)             not null,
     MILITARY_DISCOUNT_NET_SELLTHRU_DOLLARS         numeric(13,2)             not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_SALES_2011"

CREATE TABLE  F_WEEKLY_MILITARY_SALES_2011
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_GROSS_SALES_UNITS                     integer                   not null,
     MILITARY_GROSS_SALES_DOLLARS                   numeric(13,2)             not null,
     MILITARY_CUSTOMER_RETURN_UNITS                 integer                   not null,
     MILITARY_CUSTOMER_RETURN_DOLLARS               numeric(13,2)             not null,
     MILITARY_NET_SELLTHRU_UNITS                    integer                   not null,
     MILITARY_NET_SELLTHRU_DOLLARS                  numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     MILITARY_DISCOUNT_GROSS_SALES_DOLLARS          numeric(13,2)             not null,
     MILITARY_DISCOUNT_CUSTOMER_RETURN_DOLLARS      numeric(13,2)             not null,
     MILITARY_DISCOUNT_NET_SELLTHRU_DOLLARS         numeric(13,2)             not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_SALES_REPORTED_2010"

CREATE TABLE  F_WEEKLY_MILITARY_SALES_REPORTED_2010
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_SALES_DOOR_REPT                       smallint                  not null,
     MILITARY_PROMO_DOOR_REPT                       smallint                  not null,
     MILITARY_SALES_DOOR_ALL_PERIOD_REPT            smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_MILITARY_SALES_REPORTED_2011"

CREATE TABLE  F_WEEKLY_MILITARY_SALES_REPORTED_2011
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     MILITARY_SALES_DOOR_REPT                       smallint                  not null,
     MILITARY_PROMO_DOOR_REPT                       smallint                  not null,
     MILITARY_SALES_DOOR_ALL_PERIOD_REPT            smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_2014F"

CREATE TABLE  F_WEEKLY_ON_ORDER_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_ORDER_UNITS                             integer                   not null,
     EOW_ON_ORDER_DOLLARS                           numeric(13,2)             not null,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null,
     ON_ORDER_REPLENISH_STATUS                      character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_2014S"

CREATE TABLE  F_WEEKLY_ON_ORDER_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_ORDER_UNITS                             integer                   not null,
     EOW_ON_ORDER_DOLLARS                           numeric(13,2)             not null,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null,
     ON_ORDER_REPLENISH_STATUS                      character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_2015F"

CREATE TABLE  F_WEEKLY_ON_ORDER_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_ORDER_UNITS                             integer                   not null,
     EOW_ON_ORDER_DOLLARS                           numeric(13,2)             not null,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null,
     ON_ORDER_REPLENISH_STATUS                      character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_2015S"

CREATE TABLE  F_WEEKLY_ON_ORDER_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_ORDER_UNITS                             integer                   not null,
     EOW_ON_ORDER_DOLLARS                           numeric(13,2)             not null,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null,
     ON_ORDER_REPLENISH_STATUS                      character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_2016S"

CREATE TABLE  F_WEEKLY_ON_ORDER_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_ORDER_UNITS                             integer                   not null,
     EOW_ON_ORDER_DOLLARS                           numeric(13,2)             not null,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null,
     ON_ORDER_REPLENISH_STATUS                      character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_REPORTED_2014F"

CREATE TABLE  F_WEEKLY_ON_ORDER_REPORTED_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ON_ORDER_DOOR_REPT                             smallint,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_REPORTED_2014S"

CREATE TABLE  F_WEEKLY_ON_ORDER_REPORTED_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ON_ORDER_DOOR_REPT                             smallint,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_REPORTED_2015F"

CREATE TABLE  F_WEEKLY_ON_ORDER_REPORTED_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ON_ORDER_DOOR_REPT                             smallint,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_REPORTED_2015S"

CREATE TABLE  F_WEEKLY_ON_ORDER_REPORTED_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ON_ORDER_DOOR_REPT                             smallint,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_ON_ORDER_REPORTED_2016S"

CREATE TABLE  F_WEEKLY_ON_ORDER_REPORTED_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     ON_ORDER_DOOR_REPT                             smallint,
     ON_ORDER_LAST_MODIFIED_DATE                    timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_ORDERS_2014F"

CREATE TABLE  F_WEEKLY_RECOMMENDED_ORDERS_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     REPLENISH_TYPE                                 character varying(1)      not null,
     REC_ACTIVE_CODE                                character varying(1)      not null,
     REC_REPLENISH_STATUS                           character varying(1)      not null,
     SPEED      character varying(1)      not null,
     MUST_HAVE_IND                                  character varying(1)      not null,
     STOP_FLAG                                      character varying(1)      not null,
     PROFILE_TAG                                    character varying(2)      not null,
     BASE_INDEX                                     numeric(4,1)              not null,
     DESEASONALIZED_DEMAND                          numeric(7,1)              not null,
     ORDER_UP_TO_LVL                                integer                   not null,
     WEEKS_OF_SUPPLY1                               smallint                  not null,
     WEEKS_OF_SUPPLY2                               smallint                  not null,
     REC_ON_HAND_UNITS                              integer                   not null,
     REC_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     ON_ORDER_UNITS                                 integer                   not null,
     ON_ORDER_DOLLARS                               numeric(13,2)             not null,
     ROQ_UNITS                                      integer                   not null,
     ROQ_DOLLARS                                    numeric(13,2)             not null,
     ROQ_OTHER_UNITS                                integer                   not null,
     ROQ_OTHER_DOLLARS                              numeric(13,2)             not null,
     XMAS_IND                                       character varying(1)      not null,
     XMAS_ROQ_IND                                   character varying(1)      not null,
     OUT_OF_STOCK_IND                               character varying(1)      not null,
     SAFETY_COUNTER                                 numeric(5,1)              not null,
     SAFETY_STOCK                                   numeric(5,1)              not null,
     COUNTER_STOCK                                  integer                   not null,
     REC_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_ORDERS_2014S"

CREATE TABLE  F_WEEKLY_RECOMMENDED_ORDERS_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     REPLENISH_TYPE                                 character varying(1)      not null,
     REC_ACTIVE_CODE                                character varying(1)      not null,
     REC_REPLENISH_STATUS                           character varying(1)      not null,
     SPEED      character varying(1)      not null,
     MUST_HAVE_IND                                  character varying(1)      not null,
     STOP_FLAG                                      character varying(1)      not null,
     PROFILE_TAG                                    character varying(2)      not null,
     BASE_INDEX                                     numeric(4,1)              not null,
     DESEASONALIZED_DEMAND                          numeric(7,1)              not null,
     ORDER_UP_TO_LVL                                integer                   not null,
     WEEKS_OF_SUPPLY1                               smallint                  not null,
     WEEKS_OF_SUPPLY2                               smallint                  not null,
     REC_ON_HAND_UNITS                              integer                   not null,
     REC_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     ON_ORDER_UNITS                                 integer                   not null,
     ON_ORDER_DOLLARS                               numeric(13,2)             not null,
     ROQ_UNITS                                      integer                   not null,
     ROQ_DOLLARS                                    numeric(13,2)             not null,
     ROQ_OTHER_UNITS                                integer                   not null,
     ROQ_OTHER_DOLLARS                              numeric(13,2)             not null,
     XMAS_IND                                       character varying(1)      not null,
     XMAS_ROQ_IND                                   character varying(1)      not null,
     OUT_OF_STOCK_IND                               character varying(1)      not null,
     SAFETY_COUNTER                                 numeric(5,1)              not null,
     SAFETY_STOCK                                   numeric(5,1)              not null,
     COUNTER_STOCK                                  integer                   not null,
     REC_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_ORDERS_2015F"

CREATE TABLE  F_WEEKLY_RECOMMENDED_ORDERS_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     REPLENISH_TYPE                                 character varying(1)      not null,
     REC_ACTIVE_CODE                                character varying(1)      not null,
     REC_REPLENISH_STATUS                           character varying(1)      not null,
     SPEED      character varying(1)      not null,
     MUST_HAVE_IND                                  character varying(1)      not null,
     STOP_FLAG                                      character varying(1)      not null,
     PROFILE_TAG                                    character varying(2)      not null,
     BASE_INDEX                                     numeric(4,1)              not null,
     DESEASONALIZED_DEMAND                          numeric(7,1)              not null,
     ORDER_UP_TO_LVL                                integer                   not null,
     WEEKS_OF_SUPPLY1                               smallint                  not null,
     WEEKS_OF_SUPPLY2                               smallint                  not null,
     REC_ON_HAND_UNITS                              integer                   not null,
     REC_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     ON_ORDER_UNITS                                 integer                   not null,
     ON_ORDER_DOLLARS                               numeric(13,2)             not null,
     ROQ_UNITS                                      integer                   not null,
     ROQ_DOLLARS                                    numeric(13,2)             not null,
     ROQ_OTHER_UNITS                                integer                   not null,
     ROQ_OTHER_DOLLARS                              numeric(13,2)             not null,
     XMAS_IND                                       character varying(1)      not null,
     XMAS_ROQ_IND                                   character varying(1)      not null,
     OUT_OF_STOCK_IND                               character varying(1)      not null,
     SAFETY_COUNTER                                 numeric(5,1)              not null,
     SAFETY_STOCK                                   numeric(5,1)              not null,
     COUNTER_STOCK                                  integer                   not null,
     REC_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_ORDERS_2015S"

CREATE TABLE  F_WEEKLY_RECOMMENDED_ORDERS_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     REPLENISH_TYPE                                 character varying(1)      not null,
     REC_ACTIVE_CODE                                character varying(1)      not null,
     REC_REPLENISH_STATUS                           character varying(1)      not null,
     SPEED      character varying(1)      not null,
     MUST_HAVE_IND                                  character varying(1)      not null,
     STOP_FLAG                                      character varying(1)      not null,
     PROFILE_TAG                                    character varying(2)      not null,
     BASE_INDEX                                     numeric(4,1)              not null,
     DESEASONALIZED_DEMAND                          numeric(7,1)              not null,
     ORDER_UP_TO_LVL                                integer                   not null,
     WEEKS_OF_SUPPLY1                               smallint                  not null,
     WEEKS_OF_SUPPLY2                               smallint                  not null,
     REC_ON_HAND_UNITS                              integer                   not null,
     REC_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     ON_ORDER_UNITS                                 integer                   not null,
     ON_ORDER_DOLLARS                               numeric(13,2)             not null,
     ROQ_UNITS                                      integer                   not null,
     ROQ_DOLLARS                                    numeric(13,2)             not null,
     ROQ_OTHER_UNITS                                integer                   not null,
     ROQ_OTHER_DOLLARS                              numeric(13,2)             not null,
     XMAS_IND                                       character varying(1)      not null,
     XMAS_ROQ_IND                                   character varying(1)      not null,
     OUT_OF_STOCK_IND                               character varying(1)      not null,
     SAFETY_COUNTER                                 numeric(5,1)              not null,
     SAFETY_STOCK                                   numeric(5,1)              not null,
     COUNTER_STOCK                                  integer                   not null,
     REC_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_ORDERS_2016S"

CREATE TABLE  F_WEEKLY_RECOMMENDED_ORDERS_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     REPLENISH_TYPE                                 character varying(1)      not null,
     REC_ACTIVE_CODE                                character varying(1)      not null,
     REC_REPLENISH_STATUS                           character varying(1)      not null,
     SPEED      character varying(1)      not null,
     MUST_HAVE_IND                                  character varying(1)      not null,
     STOP_FLAG                                      character varying(1)      not null,
     PROFILE_TAG                                    character varying(2)      not null,
     BASE_INDEX                                     numeric(4,1)              not null,
     DESEASONALIZED_DEMAND                          numeric(7,1)              not null,
     ORDER_UP_TO_LVL                                integer                   not null,
     WEEKS_OF_SUPPLY1                               smallint                  not null,
     WEEKS_OF_SUPPLY2                               smallint                  not null,
     REC_ON_HAND_UNITS                              integer                   not null,
     REC_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     ON_ORDER_UNITS                                 integer                   not null,
     ON_ORDER_DOLLARS                               numeric(13,2)             not null,
     ROQ_UNITS                                      integer                   not null,
     ROQ_DOLLARS                                    numeric(13,2)             not null,
     ROQ_OTHER_UNITS                                integer                   not null,
     ROQ_OTHER_DOLLARS                              numeric(13,2)             not null,
     XMAS_IND                                       character varying(1)      not null,
     XMAS_ROQ_IND                                   character varying(1)      not null,
     OUT_OF_STOCK_IND                               character varying(1)      not null,
     SAFETY_COUNTER                                 numeric(5,1)              not null,
     SAFETY_STOCK                                   numeric(5,1)              not null,
     COUNTER_STOCK                                  integer                   not null,
     REC_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_REPORTED_2014F"

CREATE TABLE  F_WEEKLY_RECOMMENDED_REPORTED_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RECOMMENDED_LAST_MODIFIED_DATE                 timestamp                 not null,
     REC_DOOR_REPT                                  smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_REPORTED_2014S"

CREATE TABLE  F_WEEKLY_RECOMMENDED_REPORTED_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RECOMMENDED_LAST_MODIFIED_DATE                 timestamp                 not null,
     REC_DOOR_REPT                                  smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_REPORTED_2015F"

CREATE TABLE  F_WEEKLY_RECOMMENDED_REPORTED_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RECOMMENDED_LAST_MODIFIED_DATE                 timestamp                 not null,
     REC_DOOR_REPT                                  smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_REPORTED_2015S"

CREATE TABLE  F_WEEKLY_RECOMMENDED_REPORTED_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RECOMMENDED_LAST_MODIFIED_DATE                 timestamp                 not null,
     REC_DOOR_REPT                                  smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_RECOMMENDED_REPORTED_2016S"

CREATE TABLE  F_WEEKLY_RECOMMENDED_REPORTED_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     RECOMMENDED_LAST_MODIFIED_DATE                 timestamp                 not null,
     REC_DOOR_REPT                                  smallint
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_REPLENISHMENT_ORDERS_2014F"

CREATE TABLE  F_WEEKLY_REPLENISHMENT_ORDERS_2014F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_HAND_UNITS                              integer                   not null,
     EOW_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     ONHAND_REPLENISH_STATUS                        character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_REPLENISHMENT_ORDERS_2014S"

CREATE TABLE  F_WEEKLY_REPLENISHMENT_ORDERS_2014S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_HAND_UNITS                              integer                   not null,
     EOW_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     ONHAND_REPLENISH_STATUS                        character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_REPLENISHMENT_ORDERS_2015F"

CREATE TABLE  F_WEEKLY_REPLENISHMENT_ORDERS_2015F
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_HAND_UNITS                              integer                   not null,
     EOW_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     ONHAND_REPLENISH_STATUS                        character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_REPLENISHMENT_ORDERS_2015S"

CREATE TABLE  F_WEEKLY_REPLENISHMENT_ORDERS_2015S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_HAND_UNITS                              integer                   not null,
     EOW_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     ONHAND_REPLENISH_STATUS                        character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_REPLENISHMENT_ORDERS_2016S"

CREATE TABLE  F_WEEKLY_REPLENISHMENT_ORDERS_2016S
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     EOW_ON_HAND_UNITS                              integer                   not null,
     EOW_ON_HAND_DOLLARS                            numeric(13,2)             not null,
     RPL_ORDERS_LAST_MODIFIED_DATE                  timestamp                 not null,
     ONHAND_REPLENISH_STATUS                        character varying(1)
)
DISTRIBUTE ON (RETAILER_WEEK)
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2005"

CREATE TABLE  F_WEEKLY_SALES_2005
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2006"

CREATE TABLE  F_WEEKLY_SALES_2006
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2007"

CREATE TABLE  F_WEEKLY_SALES_2007
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2008"

CREATE TABLE  F_WEEKLY_SALES_2008
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2009"

CREATE TABLE  F_WEEKLY_SALES_2009
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2010"

CREATE TABLE  F_WEEKLY_SALES_2010
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_2011"

CREATE TABLE  F_WEEKLY_SALES_2011
(
     RETAILER_WEEK                                  integer                   not null,
     PRODUCT_KEY                                    character varying(10)     not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     GROSS_SALES_UNITS                              integer                   not null,
     GROSS_SALES_DOLLARS                            numeric(13,2)             not null,
     CUSTOMER_RETURN_UNITS                          integer                   not null,
     CUSTOMER_RETURN_DOLLARS                        numeric(13,2)             not null,
     NET_SELLTHRU_UNITS                             integer                   not null,
     NET_SELLTHRU_DOLLARS                           numeric(13,2)             not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     ORIGINAL_PRODUCT_KEY                           character varying(10)     not null,
     ORIGINAL_DOOR_KEY                              character varying(12)     not null,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2005"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2005
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2006"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2006
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2007"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2007
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2008"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2008
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2009"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2009
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2010"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2010
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating table:  "F_WEEKLY_SALES_REPORTED_2011"

CREATE TABLE  F_WEEKLY_SALES_REPORTED_2011
(
     RETAILER_WEEK                                  integer                   not null,
     DOOR_KEY                                       character varying(12)     not null,
     FIELD_REPORTING_KEY                            character varying(14)     not null,
     SHIP_TO_STATE_PROVINCE_KEY                     character varying(8)      not null,
     SALES_DOOR_REPT                                smallint                  not null,
     PROMO_DOOR_REPT                                smallint                  not null,
     SALES_LAST_MODIFIED_DATE                       timestamp                 not null,
     SALES_DOOR_ALL_PERIOD_REPT                     smallint,
     CUSTOMER_ID                                    character varying(12)     not null,
     CUSTOMER_ID_BY_BRAND                           character varying(14)     not null,
     SAP_SHIP_TO_STATE_PROVINCE_KEY                 character varying(9)      not null
)
DISTRIBUTE ON RANDOM
;

\echo
\echo *****  Creating view:  "V_DAILY_AVEDA_SALON_SALES_2008"

CREATE or replace VIEW  V_DAILY_AVEDA_SALON_SALES_2008
(
     DAY_KEY,
     PRODUCT_KEY,
     DOOR_KEY,
     FIELD_REPORTING_KEY,
     SAP_SHIP_TO_STATE_PROVINCE_KEY,
     CURRENCY_CODE_KEY,
     SAP_SALON_SALES_RECORD_TYPE,
     AVEDA_SALON_TRAN_NUM_KEY,
     STAFF_ID,
     SALON_SALES_UNITS,
     SALON_GROSS_SALES_DOLLARS,
     CUSTOMER_DISCOUNT_DOLLARS,
     SALON_NET_SALES_DOLLARS,
     DISTRIBUTOR_COST_DOLLARS,
     SALON_BIZ_UPC,
     AVEDA_SALON_DOMAIN_ID
) AS
SELECT A.DAY_KEY, C.SAP_SUPERCEDED_PRODUCT AS PRODUCT_KEY, B.SAP_CROSS_REF_NUMBER_TO AS DOOR_KEY, ((B.SAP_CROSS_REF_NUMBER_TO || '  '::"VARCHAR") || D.SAP_FLD_RPT_COMPANY_CODE) AS FIELD_REPORTING_KEY, B.SAP_SHIP_TO_STATE_PROVINCE_KEY, A.CURRENCY_CODE_KEY, A.SAP_SALON_SALES_RECORD_TYPE, A.AVEDA_SALON_TRAN_NUM_KEY, A.STAFF_ID, A.SALON_SALES_UNITS, A.SALON_GROSS_SALES_DOLLARS, A.CUSTOMER_DISCOUNT_DOLLARS, A.SALON_NET_SALES_DOLLARS, A.DISTRIBUTOR_COST_DOLLARS, A.SALON_BIZ_UPC, A.AVEDA_SALON_DOMAIN_ID FROM ADMIN.F_DAILY_AVEDA_SALON_SALES_2008 A, EDWPROD.ADMIN.D_ACCOUNT B, EDWPROD.ADMIN.D_PRODUCT C, EDWPROD.ADMIN.L_FIELD_REPORTING D WHERE (((A.DOOR_KEY = B.DOOR_KEY) AND (A.PRODUCT_KEY = C.PRODUCT_KEY)) AND (A.FIELD_REPORTING_KEY = D.FIELD_REPORTING_KEY));

\echo
\echo *****  Adding comments to objects

\echo
\echo *****  Grant privileges on objects to users

\echo
\echo *****  Grant privileges on objects to users (WITH grant option)

\echo
\echo *****  Grant admin privileges to users

\echo
\echo *****  Grant admin privileges to users (WITH grant option)

\echo
\echo *****  Grant privileges on objects to groups

\echo
\echo *****  Grant privileges on objects to groups (WITH grant option)

\echo
\echo *****  Grant admin privileges to groups

\echo
\echo *****  Grant admin privileges to groups (WITH grant option)
