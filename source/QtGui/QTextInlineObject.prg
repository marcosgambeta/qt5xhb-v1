/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTFORMAT
#endif

CLASS QTextInlineObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD rect
   METHOD width
   METHOD ascent
   METHOD descent
   METHOD height
   METHOD textDirection
   METHOD setWidth
   METHOD setAscent
   METHOD setDescent
   METHOD textPosition
   METHOD formatIndex
   METHOD format

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextInlineObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextInlineObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextInlineObject>
#endif

/*
QTextInlineObject(int i, QTextEngine *e)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW1 )
{
  int par1 = hb_parni(1);
  QTextEngine * par2 = (QTextEngine *) _qt5xhb_itemGetPtr(2);
  QTextInlineObject * o = new QTextInlineObject ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextInlineObject()
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW2 )
{
  QTextInlineObject * o = new QTextInlineObject ();
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextInlineObject(int i, QTextEngine *e)
//[2]QTextInlineObject()

// TODO: QTextEngine ?

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QTEXTINLINEOBJECT_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTINLINEOBJECT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTINLINEOBJECT_DELETE )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ISVALID )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
QRectF rect() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_RECT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_WIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->width () );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->ascent () );
  }
}


/*
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_DESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->descent () );
  }
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_HEIGHT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->height () );
  }
}


/*
Qt::LayoutDirection textDirection() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTDIRECTION )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textDirection () );
  }
}


/*
void setWidth(qreal w)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETWIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAscent(qreal a)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAscent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDescent(qreal d)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETDESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDescent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int textPosition() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTPOSITION )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textPosition () );
  }
}


/*
int formatIndex() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMATINDEX )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->formatIndex () );
  }
}


/*
QTextFormat format() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMAT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
  }
}



HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEWFROM )
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

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTINLINEOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTINLINEOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTINLINEOBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETSELFDESTRUCTION )
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