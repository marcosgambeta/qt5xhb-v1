%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionHeader()
$internalConstructor=|new1|

$prototype=QStyleOptionHeader(const QStyleOptionHeader &other)
$internalConstructor=|new2|const QStyleOptionHeader &

$prototype=QStyleOptionHeader(int version) (protected)

//[1]QStyleOptionHeader()
//[2]QStyleOptionHeader(const QStyleOptionHeader &other)
//[3]QStyleOptionHeader(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONHEADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionHeader_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONHEADER(1) )
  {
    QStyleOptionHeader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=int section
$variableMethod=|int|section|
$variableMethod=|void|section,setSection|int

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=Qt::Alignment textAlignment
$variableMethod=|Qt::Alignment|textAlignment|
$variableMethod=|void|textAlignment,setTextAlignment|Qt::Alignment

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=Qt::Alignment iconAlignment
$variableMethod=|Qt::Alignment|iconAlignment|
$variableMethod=|void|iconAlignment,setIconAlignment|Qt::Alignment

$prototype=SectionPosition position
$variableMethod=|QStyleOptionHeader::SectionPosition|position|
$variableMethod=|void|position,setPosition|QStyleOptionHeader::SectionPosition

$prototype=SelectedPosition selectedPosition
$variableMethod=|QStyleOptionHeader::SelectedPosition|selectedPosition|
$variableMethod=|void|selectedPosition,setSelectedPosition|QStyleOptionHeader::SelectedPosition

$prototype=SortIndicator sortIndicator
$variableMethod=|QStyleOptionHeader::SortIndicator|sortIndicator|
$variableMethod=|void|sortIndicator,setSortIndicator|QStyleOptionHeader::SortIndicator

$prototype=Qt::Orientation orientation
$variableMethod=|Qt::Orientation|orientation|
$variableMethod=|void|orientation,setOrientation|Qt::Orientation

#pragma ENDDUMP
