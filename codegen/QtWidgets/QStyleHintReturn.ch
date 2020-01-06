%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QStyleHintReturn::HintReturnType
*/
#define QStyleHintReturn_SH_Default                                  0xf000
#define QStyleHintReturn_SH_Mask                                     0xf001
#define QStyleHintReturn_SH_Variant                                  0xf002

/*
enum QStyleHintReturn::StyleOptionType
*/
#define QStyleHintReturn_Type                                        QStyleHintReturn_SH_Default

/*
enum QStyleHintReturn::StyleOptionVersion
*/
#define QStyleHintReturn_Version                                     1
