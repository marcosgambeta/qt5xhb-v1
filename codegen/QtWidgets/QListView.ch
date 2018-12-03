%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QListView::Flow
*/
#define QListView_LeftToRight                                        0
#define QListView_TopToBottom                                        1

/*
enum QListView::LayoutMode
*/
#define QListView_SinglePass                                         0
#define QListView_Batched                                            1

/*
enum QListView::Movement
*/
#define QListView_Static                                             0
#define QListView_Free                                               1
#define QListView_Snap                                               2

/*
enum QListView::ResizeMode
*/
#define QListView_Fixed                                              0
#define QListView_Adjust                                             1

/*
enum QListView::ViewMode
*/
#define QListView_ListMode                                           0
#define QListView_IconMode                                           1
