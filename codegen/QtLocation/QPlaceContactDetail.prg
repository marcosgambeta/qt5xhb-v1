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

$prototype=QPlaceContactDetail()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceContactDetail(const QPlaceContactDetail &other)
$internalConstructor=5,4,0|new2|const QPlaceContactDetail &

/*
[1]QPlaceContactDetail()
[2]QPlaceContactDetail(const QPlaceContactDetail &other)
*/

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContactDetail_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTACTDETAIL(1) )
  {
    QPlaceContactDetail_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QString label() const
$method=5,4,0|QString|label|

$prototype=void setLabel(const QString &label)
$method=5,4,0|void|setLabel|const QString &

$prototype=QString value() const
$method=5,4,0|QString|value|

$prototype=void setValue(const QString &value)
$method=5,4,0|void|setValue|const QString &

$prototype=void clear()
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
