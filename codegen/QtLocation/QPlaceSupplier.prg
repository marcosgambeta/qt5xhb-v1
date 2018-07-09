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

$includes=5,4,0

$prototype=QPlaceSupplier()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceSupplier(const QPlaceSupplier &other)
$internalConstructor=5,4,0|new2|const QPlaceSupplier &

//[1]QPlaceSupplier()
//[2]QPlaceSupplier(const QPlaceSupplier &other)

HB_FUNC_STATIC( QPLACESUPPLIER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSupplier_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESUPPLIER(1) )
  {
    QPlaceSupplier_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QString name() const
$method=5,4,0|QString|name|

$prototype=void setName(const QString &data)
$method=5,4,0|void|setName|const QString &

$prototype=QString supplierId() const
$method=5,4,0|QString|supplierId|

$prototype=void setSupplierId(const QString &identifier)
$method=5,4,0|void|setSupplierId|const QString &

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=void setUrl(const QUrl &data)
$method=5,4,0|void|setUrl|const QUrl &

$prototype=QPlaceIcon icon() const
$method=5,4,0|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=5,4,0|void|setIcon|const QPlaceIcon &

$prototype=bool isEmpty() const
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
