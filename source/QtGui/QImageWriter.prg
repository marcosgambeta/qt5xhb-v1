/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QImageWriter

   DATA pointer
   //DATA class_id INIT Class_Id_QImageWriter
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QImageWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QImageWriter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QImageWriter>
#endif

/*
QImageWriter ()
*/
void QImageWriter_new1 ()
{
  QImageWriter * o = new QImageWriter (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImageWriter ( QIODevice * device, const QByteArray & format )
*/
void QImageWriter_new2 ()
{
  QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
  QImageWriter * o = new QImageWriter ( par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
void QImageWriter_new3 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
  QImageWriter * o = new QImageWriter ( par1, par2 );
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

HB_FUNC_STATIC( QIMAGEWRITER_DELETE )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool canWrite () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_CANWRITE )
{
  QImageWriter * obj = (QImageWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->canWrite (  ) );
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
    hb_retni( obj->compression (  ) );
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
    QIODevice * ptr = obj->device (  );
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
    hb_retni( obj->error (  ) );
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
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
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
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
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
    QByteArray * ptr = new QByteArray( obj->format (  ) );
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
    hb_retnd( obj->gamma (  ) );
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
    hb_retni( obj->quality (  ) );
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
      obj->setCompression ( (int) hb_parni(1) );
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
      QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
      obj->setDevice ( par1 );
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
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setFileName ( par1 );
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
      QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
      obj->setFormat ( *par1 );
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
      float par1 = hb_parnd(1);
      obj->setGamma ( par1 );
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
      obj->setQuality ( (int) hb_parni(1) );
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
      QString par1 = QLatin1String( hb_parc(1) );
      QString par2 = QLatin1String( hb_parc(2) );
      obj->setText ( par1, par2 );
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
      int par1 = hb_parni(1);
      hb_retl( obj->supportsOption (  (QImageIOHandler::ImageOption) par1 ) );
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
      QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->write ( *par1 ) );
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
  QList<QByteArray> list = QImageWriter::supportedImageFormats (  );
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

HB_FUNC_STATIC( QIMAGEWRITER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QIMAGEWRITER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QIMAGEWRITER_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEWRITER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QIMAGEWRITER_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEWRITER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QIMAGEWRITER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
