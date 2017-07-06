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
HB_FUNC_STATIC( QIMAGEWRITER_CANWRITE )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canWrite () );
  }
}

/*
int compression () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_COMPRESSION )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->compression () );
  }
}

/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_DEVICE )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
ImageWriterError error () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_ERROR )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_ERRORSTRING )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_FILENAME )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_FORMAT )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
float gamma () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_GAMMA )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RFLOAT( obj->gamma () );
  }
}

/*
int quality () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_QUALITY )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->quality () );
  }
}

/*
void setCompression ( int compression )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETCOMPRESSION )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCompression ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETDEVICE )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) )
    {
      obj->setDevice ( PQIODEVICE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETFILENAME )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETFORMAT )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      obj->setFormat ( *PQBYTEARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGamma ( float gamma )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETGAMMA )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setGamma ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuality ( int quality )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETQUALITY )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setQuality ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & key, const QString & text )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETTEXT )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      obj->setText ( PQSTRING(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEWRITER_SUPPORTSOPTION )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->supportsOption ( (QImageIOHandler::ImageOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool write ( const QImage & image )
*/
HB_FUNC_STATIC( QIMAGEWRITER_WRITE )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIMAGE(1) )
    {
      RBOOL( obj->write ( *PQIMAGE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
