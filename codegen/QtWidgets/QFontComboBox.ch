%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QFontComboBox::FontFilter
flags QFontComboBox::FontFilters
*/
#define QFontComboBox_AllFonts                                       0
#define QFontComboBox_ScalableFonts                                  0x1
#define QFontComboBox_NonScalableFonts                               0x2
#define QFontComboBox_MonospacedFonts                                0x4
#define QFontComboBox_ProportionalFonts                              0x8
