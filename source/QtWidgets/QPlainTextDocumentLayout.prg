/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QPlainTextDocumentLayout INHERIT QAbstractTextDocumentLayout

   METHOD new
   METHOD delete
   METHOD cursorWidth
   METHOD ensureBlockLayout
   METHOD requestUpdate
   METHOD setCursorWidth
   METHOD blockBoundingRect
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD hitTest
   METHOD pageCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlainTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPlainTextDocumentLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPlainTextDocumentLayout>
#endif

/*
QPlainTextDocumentLayout ( QTextDocument * document )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_NEW )
{
  QPlainTextDocumentLayout * o = new QPlainTextDocumentLayout ( PQTEXTDOCUMENT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DELETE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int cursorWidth () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_CURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->cursorWidth () );
  }
}


/*
void ensureBlockLayout ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_ENSUREBLOCKLAYOUT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ensureBlockLayout ( *PQTEXTBLOCK(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void requestUpdate ()
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_REQUESTUPDATE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursorWidth ( int width )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_SETCURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCursorWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->blockBoundingRect ( *PQTEXTBLOCK(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QSizeF documentSize () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->documentSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



/*
virtual QRectF frameBoundingRect ( QTextFrame * ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->frameBoundingRect ( PQTEXTFRAME(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_HITTEST )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->hitTest ( *PQPOINTF(1), (Qt::HitTestAccuracy) hb_parni(2) ) );
  }
}


/*
virtual int pageCount () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->pageCount () );
  }
}



#pragma ENDDUMP
