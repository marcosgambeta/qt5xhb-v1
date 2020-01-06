%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QStyleOptionButton::StyleOptionType
*/
#define QStyleOptionButton_Type                                      QStyleOption_SO_Button

/*
enum QStyleOptionButton::StyleOptionVersion
*/
#define QStyleOptionButton_Version                                   1

/*
enum QStyleOptionButton::ButtonFeature
flags QStyleOptionButton::ButtonFeatures
*/
#define QStyleOptionButton_None                                      0x00
#define QStyleOptionButton_Flat                                      0x01
#define QStyleOptionButton_HasMenu                                   0x02
#define QStyleOptionButton_DefaultButton                             0x04
#define QStyleOptionButton_AutoDefaultButton                         0x08
#define QStyleOptionButton_CommandLinkButton                         0x10
