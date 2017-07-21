$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QImageWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD canWrite
   METHOD compression
   METHOD device
   METHOD error
   METHOD errorString
   METHOD fileName
   METHOD format
   METHOD gamma
   METHOD quality
   METHOD setCompression
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setGamma
   METHOD setQuality
   METHOD setText
   METHOD supportsOption
   METHOD write
   METHOD supportedImageFormats

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
QImageWriter ()
*/
void QImageWriter_new1 ()
{
  QImageWriter * o = new QImageWriter ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImageWriter ( QIODevice * device, const QByteArray & format )
*/
void QImageWriter_new2 ()
{
  QImageWriter * o = new QImageWriter ( PQIODEVICE(1), *PQBYTEARRAY(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
void QImageWriter_new3 ()
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
  QImageWriter * o = new QImageWriter ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QImageWriter ()
//[2]QImageWriter ( QIODevice * device, const QByteArray & format )
//[3]QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QIMAGEWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageWriter_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    QImageWriter_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageWriter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool canWrite () const
*/
$method=|bool|canWrite|

/*
int compression () const
*/
$method=|int|compression|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
ImageWriterError error () const
*/
$method=|QImageWriter::ImageWriterError|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QByteArray format () const
*/
$method=|QByteArray|format|

/*
float gamma () const
*/
$method=|float|gamma|

/*
int quality () const
*/
$method=|int|quality|

/*
void setCompression ( int compression )
*/
$method=|void|setCompression|int

/*
void setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
void setGamma ( float gamma )
*/
$method=|void|setGamma|float

/*
void setQuality ( int quality )
*/
$method=|void|setQuality|int

/*
void setText ( const QString & key, const QString & text )
*/
$method=|void|setText|const QString &,const QString &

/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
$method=|bool|supportsOption|QImageIOHandler::ImageOption

/*
bool write ( const QImage & image )
*/
$method=|bool|write|const QImage &

/*
static QList<QByteArray> supportedImageFormats ()
*/
HB_FUNC_STATIC( QIMAGEWRITER_SUPPORTEDIMAGEFORMATS )
{
  QList<QByteArray> list = QImageWriter::supportedImageFormats ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$extraMethods

#pragma ENDDUMP
