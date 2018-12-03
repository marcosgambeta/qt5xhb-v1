%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QTextEdit::AutoFormattingFlag
flags QTextEdit::AutoFormatting
*/
#define QTextEdit_AutoNone                                           0
#define QTextEdit_AutoBulletList                                     0x00000001
#define QTextEdit_AutoAll                                            0xffffffff

/*
enum QTextEdit::LineWrapMode
*/
#define QTextEdit_NoWrap                                             0
#define QTextEdit_WidgetWidth                                        1
#define QTextEdit_FixedPixelWidth                                    2
#define QTextEdit_FixedColumnWidth                                   3
