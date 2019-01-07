%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QWidget::RenderFlag
flags QWidget::RenderFlags
*/
#define QWidget_DrawWindowBackground                                 0x1
#define QWidget_DrawChildren                                         0x2
#define QWidget_IgnoreMask                                           0x4
