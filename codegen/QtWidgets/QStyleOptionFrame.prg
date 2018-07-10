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

$prototype=QStyleOptionFrame()
$internalConstructor=|new1|

$prototype=QStyleOptionFrame(const QStyleOptionFrame &other)
$internalConstructor=|new2|const QStyleOptionFrame &

$prototype=QStyleOptionFrame(int version) (protected)

//[1]QStyleOptionFrame()
//[2]QStyleOptionFrame(const QStyleOptionFrame &other)
//[3]QStyleOptionFrame(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionFrame_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONFRAME(1) )
  {
    QStyleOptionFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=int lineWidth
$variableMethod=|int|lineWidth|
$variableMethod=|void|lineWidth,setLineWidth|int

$prototype=int midLineWidth
$variableMethod=|int|midLineWidth|
$variableMethod=|void|midLineWidth,setMidLineWidth|int

$prototype=FrameFeatures features
$variableMethod=|QStyleOptionFrame::FrameFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionFrame::FrameFeatures

$prototype=QFrame::Shape frameShape
$variableMethod=|QFrame::Shape|frameShape|
$variableMethod=|void|frameShape,setFrameShape|QFrame::Shape

#pragma ENDDUMP
