%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
#endif

$beginClassFrom=QPaintDevice

   METHOD new
   METHOD delete

   METHOD description
   METHOD fileName
   METHOD outputDevice
   METHOD resolution
   METHOD setDescription
   METHOD setFileName
   METHOD setOutputDevice
   METHOD setResolution
   METHOD setSize
   METHOD setTitle
   METHOD setViewBox
   METHOD size
   METHOD title
   METHOD viewBox
   METHOD viewBoxF

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSvgGenerator ()
$constructor=|new|

$deleteMethod

$prototype=QString description () const
$method=|QString|description|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QIODevice * outputDevice () const
$method=|QIODevice *|outputDevice|

$prototype=int resolution () const
$method=|int|resolution|

$prototype=void setDescription ( const QString & description )
$method=|void|setDescription|const QString &

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setOutputDevice ( QIODevice * outputDevice )
$method=|void|setOutputDevice|QIODevice *

$prototype=void setResolution ( int dpi )
$method=|void|setResolution|int

$prototype=void setSize ( const QSize & size )
$method=|void|setSize|const QSize &

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototype=void setViewBox ( const QRect & viewBox )
$internalMethod=|void|setViewBox,setViewBox1|const QRect &

$prototype=void setViewBox ( const QRectF & viewBox )
$internalMethod=|void|setViewBox,setViewBox2|const QRectF &

//[1]void setViewBox ( const QRect & viewBox )
//[2]void setViewBox ( const QRectF & viewBox )

HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgGenerator_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgGenerator_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSize size () const
$method=|QSize|size|

$prototype=QString title () const
$method=|QString|title|

$prototype=QRect viewBox () const
$method=|QRect|viewBox|

$prototype=QRectF viewBoxF () const
$method=|QRectF|viewBoxF|

#pragma ENDDUMP
