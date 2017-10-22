/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QUuid::Variant
*/
#define QUuid_VarUnknown                                             -1
#define QUuid_NCS                                                    0
#define QUuid_DCE                                                    2
#define QUuid_Microsoft                                              6
#define QUuid_Reserved                                               7

/*
enum QUuid::Version
*/
#define QUuid_VerUnknown                                             -1
#define QUuid_Time                                                   1
#define QUuid_EmbeddedPOSIX                                          2
//#define QUuid_Name                                                   Md5
#define QUuid_Md5                                                    3
#define QUuid_Random                                                 4
#define QUuid_Sha1                                                   5
#define QUuid_Name                                                   QUuid_Md5
