$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPICTURE
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QPictureIO

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD picture
   METHOD status
   METHOD format
   METHOD ioDevice
   METHOD fileName
   METHOD quality
   METHOD description
   METHOD parameters
   METHOD gamma
   METHOD setPicture
   METHOD setStatus
   METHOD setFormat
   METHOD setIODevice
   METHOD setFileName
   METHOD setQuality
   METHOD setDescription
   METHOD setParameters
   METHOD setGamma
   METHOD read
   METHOD write
   METHOD pictureFormat
   METHOD inputFormats
   METHOD outputFormats

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPictureIO()
*/
$internalConstructor=|new1|

/*
QPictureIO(QIODevice *ioDevice, const char *format)
*/
$internalConstructor=|new2|QIODevice *,const char *

/*
QPictureIO(const QString &fileName, const char *format)
*/
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

/*
const QPicture &picture() const
*/
$method=|const QPicture &|picture|

/*
int status() const
*/
$method=|int|status|

/*
const char *format() const
*/
$method=|const char *|format|

/*
QIODevice *ioDevice() const
*/
$method=|QIODevice *|ioDevice|

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
int quality() const
*/
$method=|int|quality|

/*
QString description() const
*/
$method=|QString|description|

/*
const char *parameters() const
*/
$method=|const char *|parameters|

/*
float gamma() const
*/
$method=|float|gamma|

/*
void setPicture(const QPicture &)
*/
$method=|void|setPicture|const QPicture &

/*
void setStatus(int)
*/
$method=|void|setStatus|int

/*
void setFormat ( const char * )
*/
$method=|void|setFormat|const char *

/*
void setIODevice(QIODevice *)
*/
$method=|void|setIODevice|QIODevice *

/*
void setFileName(const QString &)
*/
$method=|void|setFileName|const QString &

/*
void setQuality(int)
*/
$method=|void|setQuality|int

/*
void setDescription(const QString &)
*/
$method=|void|setDescription|const QString &

/*
void setParameters ( const char * )
*/
$method=|void|setParameters|const char *

/*
void setGamma(float)
*/
$method=|void|setGamma|float

/*
bool read()
*/
$method=|bool|read|

/*
bool write()
*/
$method=|bool|write|

/*
static QByteArray pictureFormat(const QString &fileName)
*/
$staticInternalMethod=|QByteArray|pictureFormat,pictureFormat1|const QString &

/*
static QByteArray pictureFormat(QIODevice *)
*/
$staticInternalMethod=|QByteArray|pictureFormat,pictureFormat2|QIODevice *

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

/*
static QList<QByteArray> inputFormats()
*/
$staticMethod=|QList<QByteArray>|inputFormats|

/*
static QList<QByteArray> outputFormats()
*/
$staticMethod=|QList<QByteArray>|outputFormats|

$extraMethods

#pragma ENDDUMP
