%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QTreeWidgetItem::ChildIndicatorPolicy
*/
#define QTreeWidgetItem_ShowIndicator                                0
#define QTreeWidgetItem_DontShowIndicator                            1
#define QTreeWidgetItem_DontShowIndicatorWhenChildless               2

/*
enum QTreeWidgetItem::ItemType
*/
#define QTreeWidgetItem_Type                                         0
#define QTreeWidgetItem_UserType                                     1000
