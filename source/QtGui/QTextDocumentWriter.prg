/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QIODEVICE
REQUEST QTEXTCODEC
#endif

CLASS QTextDocumentWriter

   DATA pointer
   //DATA class_id INIT Class_Id_QTextDocumentWriter
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD setFormat
   METHOD format
   METHOD setDevice
   METHOD device
   METHOD setFileName
   METHOD fileName
   METHOD write1
   METHOD write2
   METHOD write
   METHOD setCodec
   METHOD codec

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDocumentWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextDocumentWriter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextDocumentWriter>
#endif

/*
QTextDocumentWriter()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW1 )
{
  QTextDocumentWriter * o = new QTextDocumentWriter (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDocumentWriter(QIODevice *device, const QByteArray &format)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW2 )
{
  QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
  QTextDocumentWriter * o = new QTextDocumentWriter ( par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW3 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
  QTextDocumentWriter * o = new QTextDocumentWriter ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextDocumentWriter()
//[2]QTextDocumentWriter(QIODevice *device, const QByteArray &format)
//[3]QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_DELETE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setFormat (const QByteArray &format)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETFORMAT )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray format () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_FORMAT )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setDevice (QIODevice *device)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETDEVICE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIODevice *device () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_DEVICE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
void setFileName (const QString &fileName)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETFILENAME )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_FILENAME )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
bool write(const QTextDocument *document)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE1 )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextDocument * par1 = (const QTextDocument *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->write ( par1 ) );
  }
}


/*
bool write(const QTextDocumentFragment &fragment)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE2 )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentFragment * par1 = (QTextDocumentFragment *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->write ( *par1 ) );
  }
}


//[1]bool write(const QTextDocument *document)
//[2]bool write(const QTextDocumentFragment &fragment)

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCodec(QTextCodec *codec)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETCODEC )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCodec * par1 = (QTextCodec *) _qt5xhb_itemGetPtr(1);
    obj->setCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextCodec *codec() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_CODEC )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCodec * ptr = obj->codec (  );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}




HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEWFROM )
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

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETSELFDESTRUCTION )
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
