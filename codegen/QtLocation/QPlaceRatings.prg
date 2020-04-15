%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceRatings()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceRatings(const QPlaceRatings &other)
$internalConstructor=5,4,0|new2|const QPlaceRatings &

/*
[1]QPlaceRatings()
[2]QPlaceRatings(const QPlaceRatings &other)
*/

HB_FUNC_STATIC( QPLACERATINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceRatings_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACERATINGS(1) )
  {
    QPlaceRatings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=qreal average() const
$method=5,4,0|qreal|average|

$prototype=void setAverage(qreal average)
$method=5,4,0|void|setAverage|qreal

$prototype=int count() const
$method=5,4,0|int|count|

$prototype=void setCount(int count)
$method=5,4,0|void|setCount|int

$prototype=qreal maximum() const
$method=5,4,0|qreal|maximum|

$prototype=void setMaximum(qreal max)
$method=5,4,0|void|setMaximum|qreal

$prototype=bool isEmpty() const
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
