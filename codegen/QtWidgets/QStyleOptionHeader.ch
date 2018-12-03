%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QStyleOptionHeader::StyleOptionType
*/
#define QStyleOptionHeader_Type                                      QStyleOption_SO_Header

/*
enum QStyleOptionHeader::StyleOptionVersion
*/
#define QStyleOptionHeader_Version                                   1

/*
enum QStyleOptionHeader::SectionPosition
*/
#define QStyleOptionHeader_Beginning                                 0
#define QStyleOptionHeader_Middle                                    1
#define QStyleOptionHeader_End                                       2
#define QStyleOptionHeader_OnlyOneSection                            3

/*
enum QStyleOptionHeader::SelectedPosition
*/
#define QStyleOptionHeader_NotAdjacent                               0
#define QStyleOptionHeader_NextIsSelected                            1
#define QStyleOptionHeader_PreviousIsSelected                        2
#define QStyleOptionHeader_NextAndPreviousAreSelected                3

/*
enum QStyleOptionHeader::SortIndicator
*/
#define QStyleOptionHeader_None                                      0
#define QStyleOptionHeader_SortUp                                    1
#define QStyleOptionHeader_SortDown                                  2
