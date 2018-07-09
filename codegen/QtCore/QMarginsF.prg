%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$prototype=QMarginsF()
$internalConstructor=5,3,0|new1|

$prototype=QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
$internalConstructor=5,3,0|new2|qreal,qreal,qreal,qreal

$prototype=QMarginsF(const QMargins &margins)
$internalConstructor=5,3,0|new3|const QMargins &

//[1]QMarginsF()
//[2]QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
//[3]QMarginsF(const QMargins &margins)

HB_FUNC_STATIC( QMARGINSF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMarginsF_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMarginsF_new2();
  }
  else if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QMarginsF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,3,0

$prototype=bool isNull() const
$method=5,3,0|bool|isNull|

$prototype=qreal left() const
$method=5,3,0|qreal|left|

$prototype=qreal top() const
$method=5,3,0|qreal|top|

$prototype=qreal right() const
$method=5,3,0|qreal|right|

$prototype=qreal bottom() const
$method=5,3,0|qreal|bottom|

$prototype=void setLeft(qreal left)
$method=5,3,0|void|setLeft|qreal

$prototype=void setTop(qreal top)
$method=5,3,0|void|setTop|qreal

$prototype=void setRight(qreal right)
$method=5,3,0|void|setRight|qreal

$prototype=void setBottom(qreal bottom)
$method=5,3,0|void|setBottom|qreal

$prototype=QMargins toMargins() const
$method=5,3,0|QMargins|toMargins|

$extraMethods

#pragma ENDDUMP
