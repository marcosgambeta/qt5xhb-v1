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

$includes

$prototype=QPictureIO()
$internalConstructor=|new1|

$prototype=QPictureIO(QIODevice *ioDevice, const char *format)
$internalConstructor=|new2|QIODevice *,const char *

$prototype=QPictureIO(const QString &fileName, const char *format)
$internalConstructor=|new3|const QString &,const char *

//[1]QPictureIO()
//[2]QPictureIO(QIODevice *ioDevice, const char *format)
//[3]QPictureIO(const QString &fileName, const char *format)

HB_FUNC_STATIC( QPICTUREIO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPictureIO_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QPictureIO_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QPictureIO_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QPicture &picture() const
$method=|const QPicture &|picture|

$prototype=int status() const
$method=|int|status|

$prototype=const char *format() const
$method=|const char *|format|

$prototype=QIODevice *ioDevice() const
$method=|QIODevice *|ioDevice|

$prototype=QString fileName() const
$method=|QString|fileName|

$prototype=int quality() const
$method=|int|quality|

$prototype=QString description() const
$method=|QString|description|

$prototype=const char *parameters() const
$method=|const char *|parameters|

$prototype=float gamma() const
$method=|float|gamma|

$prototype=void setPicture(const QPicture &)
$method=|void|setPicture|const QPicture &

$prototype=void setStatus(int)
$method=|void|setStatus|int

$prototype=void setFormat ( const char * )
$method=|void|setFormat|const char *

$prototype=void setIODevice(QIODevice *)
$method=|void|setIODevice|QIODevice *

$prototype=void setFileName(const QString &)
$method=|void|setFileName|const QString &

$prototype=void setQuality(int)
$method=|void|setQuality|int

$prototype=void setDescription(const QString &)
$method=|void|setDescription|const QString &

$prototype=void setParameters ( const char * )
$method=|void|setParameters|const char *

$prototype=void setGamma(float)
$method=|void|setGamma|float

$prototype=bool read()
$method=|bool|read|

$prototype=bool write()
$method=|bool|write|

$prototype=static QByteArray pictureFormat(const QString &fileName)
$internalStaticMethod=|QByteArray|pictureFormat,pictureFormat1|const QString &

$prototype=static QByteArray pictureFormat(QIODevice *)
$internalStaticMethod=|QByteArray|pictureFormat,pictureFormat2|QIODevice *

//[1]static QByteArray pictureFormat(const QString &fileName)
//[2]static QByteArray pictureFormat(QIODevice *)

HB_FUNC_STATIC( QPICTUREIO_PICTUREFORMAT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPictureIO_pictureFormat1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPictureIO_pictureFormat2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QList<QByteArray> inputFormats()
$staticMethod=|QList<QByteArray>|inputFormats|

$prototype=static QList<QByteArray> outputFormats()
$staticMethod=|QList<QByteArray>|outputFormats|

$extraMethods

#pragma ENDDUMP
