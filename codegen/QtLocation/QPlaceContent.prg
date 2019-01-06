%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QPlaceSupplier>
#include <QPlaceUser>

$prototype=QPlaceContent()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceContent(const QPlaceContent &other)
$internalConstructor=5,4,0|new2|const QPlaceContent &

//[1]QPlaceContent()
//[2]QPlaceContent(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACECONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContent_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceContent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QPlaceContent::Type type() const
$method=5,4,0|QPlaceContent::Type|type|

$prototype=QPlaceSupplier supplier() const
$method=5,4,0|QPlaceSupplier|supplier|

$prototype=void setSupplier(const QPlaceSupplier &supplier)
$method=5,4,0|void|setSupplier|const QPlaceSupplier &

$prototype=QPlaceUser user() const
$method=5,4,0|QPlaceUser|user|

$prototype=void setUser(const QPlaceUser &user)
$method=5,4,0|void|setUser|const QPlaceUser &

$prototype=QString attribution() const
$method=5,4,0|QString|attribution|

$prototype=void setAttribution(const QString &attribution)
$method=5,4,0|void|setAttribution|const QString &

$extraMethods

#pragma ENDDUMP
