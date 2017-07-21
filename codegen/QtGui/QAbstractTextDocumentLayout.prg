$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QString anchorAt ( const QPointF & position ) const
*/
$method=|QString|anchorAt|const QPointF &

/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
*/
$method=|QRectF|blockBoundingRect|const QTextBlock &

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
$method=|QSizeF|documentSize|

/*
virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
*/
$method=|QRectF|frameBoundingRect|QTextFrame *

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
    RINT( obj->hitTest ( *PQPOINTF(1), (Qt::HitTestAccuracy) hb_parni(2) ) );
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
    RINT( obj->pageCount () );
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