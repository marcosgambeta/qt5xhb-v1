%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

/*
enum QWebFrame::RenderLayer
flags QWebFrame::RenderLayers
*/
#define QWebFrame_ContentsLayer                                      0x10
#define QWebFrame_ScrollBarLayer                                     0x20
#define QWebFrame_PanIconLayer                                       0x40
#define QWebFrame_AllLayers                                          0xff

/*
enum QWebFrame::ValueOwnership
*/
#define QWebFrame_QtOwnership                                        0
#define QWebFrame_ScriptOwnership                                    1
#define QWebFrame_AutoOwnership                                      2
