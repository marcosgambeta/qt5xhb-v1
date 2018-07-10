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

$prototype=QStyleOptionComplex(int version = QStyleOptionComplex::Version, int type = SO_Complex)
$internalConstructor=|new1|int=QStyleOptionComplex::Version,int=QStyleOptionComplex::SO_Complex

$prototype=QStyleOptionComplex(const QStyleOptionComplex &other)
$internalConstructor=|new2|const QStyleOptionComplex &

//[1]QStyleOptionComplex(int version = QStyleOptionComplex::Version, int type = SO_Complex)
//[2]QStyleOptionComplex(const QStyleOptionComplex &other)

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QStyleOptionComplex_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONCOMPLEX(1) )
  {
    QStyleOptionComplex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStyle::SubControls subControls
$variableMethod=|QStyle::SubControls|subControls|
$variableMethod=|void|subControls,setSubControls|QStyle::SubControls

$prototype=QStyle::SubControls activeSubControls
$variableMethod=|QStyle::SubControls|activeSubControls|
$variableMethod=|void|activeSubControls,setActiveSubControls|QStyle::SubControls

#pragma ENDDUMP
