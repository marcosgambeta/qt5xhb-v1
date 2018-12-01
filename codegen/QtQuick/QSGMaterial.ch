%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

/*
enum QSGMaterial::Flag
flags QSGMaterial::Flags
*/
#define QSGMaterial_Blending                                         0x0001
#define QSGMaterial_RequiresDeterminant                              0x0002
#define QSGMaterial_RequiresFullMatrix                               hb_bitor(0x0008,QSGMaterial_RequiresFullMatrixExceptTranslate)
