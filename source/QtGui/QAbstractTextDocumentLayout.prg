/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTDOCUMENT
REQUEST QSIZEF
REQUEST QTEXTOBJECTINTERFACE
REQUEST QPAINTDEVICE
#endif

CLASS QAbstractTextDocumentLayout INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD anchorAt
   METHOD blockBoundingRect
   METHOD document
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD handlerForObject
   METHOD hitTest
   METHOD pageCount
   METHOD paintDevice
   METHOD registerHandler
   METHOD setPaintDevice

   METHOD onDocumentSizeChanged
   METHOD onPageCountChanged
   METHOD onUpdate
   METHOD onUpdateBlock

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractTextDocumentLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractTextDocumentLayout>
#endif


HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DELETE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString anchorAt ( const QPointF & position ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ANCHORAT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->anchorAt ( *PQPOINTF(1) ) ) );
  }
}


/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->blockBoundingRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
virtual QSizeF documentSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->documentSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



/*
virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * par1 = (QTextFrame *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->frameBoundingRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QTextObjectInterface * handlerForObject ( int objectType ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HANDLERFOROBJECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextObjectInterface * ptr = obj->handlerForObject ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOBJECTINTERFACE" );
  }
}


/*
virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HITTEST )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    hb_retni( obj->hitTest ( *PQPOINTF(1), (Qt::HitTestAccuracy) par2 ) );
  }
}


/*
virtual int pageCount () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageCount () );
  }
}


/*
QPaintDevice * paintDevice () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
void registerHandler ( int objectType, QObject * component )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_REGISTERHANDLER )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerHandler ( PINT(1), PQOBJECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaintDevice ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_SETPAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) _qt5xhb_itemGetPtr(1);
    obj->setPaintDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
