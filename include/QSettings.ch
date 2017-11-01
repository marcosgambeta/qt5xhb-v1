/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QSETTINGS_CH
#define QSETTINGS_CH

/*
enum QSettings::Format
*/
#define QSettings_NativeFormat                                       0
#define QSettings_IniFormat                                          1
#define QSettings_InvalidFormat                                      16

/*
enum QSettings::Scope
*/
#define QSettings_UserScope                                          0
#define QSettings_SystemScope                                        1

/*
enum QSettings::Status
*/
#define QSettings_NoError                                            0
#define QSettings_AccessError                                        1
#define QSettings_FormatError                                        2

#endif /* QSETTINGS_CH */
