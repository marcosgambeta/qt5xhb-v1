/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTFORMAT
#endif

CLASS QTextInlineObject

   DATA pointer
   DATA class_id INIT Class_Id_QTextInlineObject
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextInlineObject>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextInlineObject>
#endif
#endif

/*
QTextInlineObject(int i, QTextEngine *e)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QTextEngine * par2 = (QTextEngine *) _qtxhb_itemGetPtr(2);
  QTextInlineObject * o = new QTextInlineObject ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextInlineObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextInlineObject()
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextInlineObject * o = new QTextInlineObject (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextInlineObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ISVALID )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QRectF rect() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_RECT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_WIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->width (  ) );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->ascent (  ) );
  }
}


/*
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_DESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->descent (  ) );
  }
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_HEIGHT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->height (  ) );
  }
}


/*
Qt::LayoutDirection textDirection() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTDIRECTION )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textDirection (  ) );
  }
}


/*
void setWidth(qreal w)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETWIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAscent(qreal a)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAscent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDescent(qreal d)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETDESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDescent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int textPosition() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTPOSITION )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textPosition (  ) );
  }
}


/*
int formatIndex() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMATINDEX )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->formatIndex (  ) );
  }
}


/*
QTextFormat format() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMAT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
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