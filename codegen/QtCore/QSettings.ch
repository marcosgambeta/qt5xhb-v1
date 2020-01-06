%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

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
