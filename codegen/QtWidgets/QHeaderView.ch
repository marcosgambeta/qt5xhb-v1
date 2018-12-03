%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QHeaderView::ResizeMode
*/
#define QHeaderView_Interactive                                      0
#define QHeaderView_Stretch                                          1
#define QHeaderView_Fixed                                            2
#define QHeaderView_ResizeToContents                                 3
#define QHeaderView_Custom                                           QHeaderView_Fixed // TODO: obsolete ?
