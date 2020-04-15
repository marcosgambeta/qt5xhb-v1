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

$beginClassFrom=QPlaceContent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceImage()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceImage(const QPlaceContent &other)
$internalConstructor=5,4,0|new2|const QPlaceContent &

/*
[1]QPlaceImage()
[2]QPlaceImage(const QPlaceContent &other)
*/

HB_FUNC_STATIC( QPLACEIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceImage_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceImage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=5,4,0|void|setUrl|const QUrl &

$prototype=QString imageId() const
$method=5,4,0|QString|imageId|

$prototype=void setImageId(const QString &identifier)
$method=5,4,0|void|setImageId|const QString &

$prototype=QString mimeType() const
$method=5,4,0|QString|mimeType|

$prototype=void setMimeType(const QString &data)
$method=5,4,0|void|setMimeType|const QString &

#pragma ENDDUMP
