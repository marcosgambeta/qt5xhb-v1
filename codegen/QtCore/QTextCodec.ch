%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QTextCodec::ConversionFlag
flags QTextCodec::ConversionFlags
*/
#define QTextCodec_DefaultConversion                                 0
#define QTextCodec_ConvertInvalidToNull                              0x80000000
#define QTextCodec_IgnoreHeader                                      0x1
#define QTextCodec_FreeFunction                                      0x2
