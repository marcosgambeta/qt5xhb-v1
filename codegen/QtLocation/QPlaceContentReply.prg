%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECONTENTREQUEST
#endif

$beginClassFrom=QPlaceReply

   METHOD new
   METHOD delete
   METHOD type
   METHOD totalCount
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceContentReply(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=QPlaceReply::Type type() const
$method=5,4,0|QPlaceReply::Type|type|

$prototype=int totalCount() const
$method=5,4,0|int|totalCount|

$prototype=QPlaceContentRequest request() const
$method=5,4,0|QPlaceContentRequest|request|

$prototype=QPlaceContentRequest previousPageRequest() const
$method=5,4,0|QPlaceContentRequest|previousPageRequest|

$prototype=QPlaceContentRequest nextPageRequest() const
$method=5,4,0|QPlaceContentRequest|nextPageRequest|

#pragma ENDDUMP
