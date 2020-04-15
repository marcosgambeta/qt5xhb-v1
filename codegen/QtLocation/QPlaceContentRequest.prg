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

#include <QtCore/QVariant>

$prototype=QPlaceContentRequest()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceContentRequest(const QPlaceContentRequest &other)
$internalConstructor=5,4,0|new2|const QPlaceContentRequest &

/*
[1]QPlaceContentRequest()
[2]QPlaceContentRequest(const QPlaceContentRequest &other)
*/

HB_FUNC_STATIC( QPLACECONTENTREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContentRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENTREQUEST(1) )
  {
    QPlaceContentRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QPlaceContent::Type contentType() const
$method=5,4,0|QPlaceContent::Type|contentType|

$prototype=void setContentType(QPlaceContent::Type type)
$method=5,4,0|void|setContentType|QPlaceContent::Type

$prototype=QString placeId() const
$method=5,4,0|QString|placeId|

$prototype=void setPlaceId(const QString &identifier)
$method=5,4,0|void|setPlaceId|const QString &

$prototype=QVariant contentContext() const
$method=5,4,0|QVariant|contentContext|

$prototype=void setContentContext(const QVariant &context)
$method=5,4,0|void|setContentContext|const QVariant &

$prototype=int limit() const
$method=5,4,0|int|limit|

$prototype=void setLimit(int limit)
$method=5,4,0|void|setLimit|int

$prototype=void clear()
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
