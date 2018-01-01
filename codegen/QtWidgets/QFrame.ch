%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QFrame::Shadow
*/
#define QFrame_Plain                                                 0x0010
#define QFrame_Raised                                                0x0020
#define QFrame_Sunken                                                0x0030

/*
enum QFrame::Shape
*/
#define QFrame_NoFrame                                               0
#define QFrame_Box                                                   0x0001
#define QFrame_Panel                                                 0x0002
#define QFrame_StyledPanel                                           0x0006
#define QFrame_HLine                                                 0x0004
#define QFrame_VLine                                                 0x0005
#define QFrame_WinPanel                                              0x0003

/*
enum QFrame::StyleMask
*/
#define QFrame_Shadow_Mask                                           0x00f0
#define QFrame_Shape_Mask                                            0x000f
