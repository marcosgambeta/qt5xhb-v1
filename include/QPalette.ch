/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QPALETTE_CH
#define QPALETTE_CH

/*
enum QPalette::ColorGroup
*/
#define QPalette_Disabled                                            1
#define QPalette_Active                                              0
#define QPalette_Inactive                                            2
#define QPalette_Normal                                              QPalette_Active

/*
enum QPalette::ColorRole
*/
#define QPalette_Window                                              10
#define QPalette_Background                                          QPalette_Window
#define QPalette_WindowText                                          0
#define QPalette_Foreground                                          QPalette_WindowText
#define QPalette_Base                                                9
#define QPalette_AlternateBase                                       16
#define QPalette_ToolTipBase                                         18
#define QPalette_ToolTipText                                         19
#define QPalette_Text                                                6
#define QPalette_Button                                              1
#define QPalette_ButtonText                                          8
#define QPalette_BrightText                                          7
#define QPalette_Light                                               2
#define QPalette_Midlight                                            3
#define QPalette_Dark                                                4
#define QPalette_Mid                                                 5
#define QPalette_Shadow                                              11
#define QPalette_Highlight                                           12
#define QPalette_HighlightedText                                     13
#define QPalette_Link                                                14
#define QPalette_LinkVisited                                         15
#define QPalette_NoRole                                              17

#endif /* QPALETTE_CH */
