$header

/*
enum QSql::Location
*/
#define QSql_BeforeFirstRow                                -1
#define QSql_AfterLastRow                                  -2

/*
enum QSql::NumericalPrecisionPolicy
*/
#define QSql_LowPrecisionInt32                             0x01
#define QSql_LowPrecisionInt64                             0x02
#define QSql_LowPrecisionDouble                            0x04
#define QSql_HighPrecision                                 0

/*
enum QSql::ParamTypeFlag
flags QSql::ParamType
*/
#define QSql_In                                            0x00000001
#define QSql_Out                                           0x00000002
#define QSql_InOut                                         hb_bitor(QSql_In,QSql_Out)
#define QSql_Binary                                        0x00000004

/*
enum QSql::TableType
*/
#define QSql_Tables                                        0x01
#define QSql_SystemTables                                  0x02
#define QSql_Views                                         0x04
#define QSql_AllTables                                     0xff
