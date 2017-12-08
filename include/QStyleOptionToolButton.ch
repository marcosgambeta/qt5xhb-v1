/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QSTYLEOPTIONTOOLBUTTON_CH
#define QSTYLEOPTIONTOOLBUTTON_CH

/*
enum QStyleOptionToolButton::StyleOptionType
*/
#define QStyleOptionToolButton_Type                                  QStyleOption_SO_ToolButton

/*
enum QStyleOptionToolButton::StyleOptionVersion
*/
#define QStyleOptionToolButton_Version                               1

/*
enum QStyleOptionToolButton::ToolButtonFeature
flags QStyleOptionToolButton::ToolButtonFeatures
*/
#define QStyleOptionToolButton_None                                  0x00
#define QStyleOptionToolButton_Arrow                                 0x01
#define QStyleOptionToolButton_Menu                                  0x04
#define QStyleOptionToolButton_MenuButtonPopup                       QStyleOptionToolButton_Menu
#define QStyleOptionToolButton_PopupDelay                            0x08
#define QStyleOptionToolButton_HasMenu                               0x10

#endif /* QSTYLEOPTIONTOOLBUTTON_CH */
