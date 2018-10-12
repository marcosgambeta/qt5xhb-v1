%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum class QtAndroid::BindFlag
flags class QtAndroid::BindFlags
*/
#define QtAndroid_BindFlag_None                                      0x00000000
#define QtAndroid_BindFlag_AutoCreate                                0x00000001
#define QtAndroid_BindFlag_DebugUnbind                               0x00000002
#define QtAndroid_BindFlag_NotForeground                             0x00000004
#define QtAndroid_BindFlag_AboveClient                               0x00000008
#define QtAndroid_BindFlag_AllowOomManagement                        0x00000010
#define QtAndroid_BindFlag_WaivePriority                             0x00000020
#define QtAndroid_BindFlag_Important                                 0x00000040
#define QtAndroid_BindFlag_AdjustWithActivity                        0x00000080
#define QtAndroid_BindFlag_ExternalService                           -2147483648 // 0x80000000

/*
enum class QtAndroid::PermissionResult
*/
#define QtAndroid_PermissionResult_Granted                           0
#define QtAndroid_PermissionResult_Denied                            1
