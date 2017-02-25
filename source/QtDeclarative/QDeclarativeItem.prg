/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSCRIPTVALUE
#endif

CLASS QDeclarativeItem INHERIT QGraphicsObject,QDeclarativeParserStatus

   DATA class_id INIT Class_Id_QDeclarativeItem
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD baselineOffset
   METHOD childAt
   METHOD childrenRect
   METHOD clip
   METHOD forceActiveFocus
   METHOD implicitHeight
   METHOD implicitWidth
   METHOD keepMouseGrab
   METHOD mapFromItem
   METHOD mapToItem
   METHOD parentItem
   METHOD setBaselineOffset
   METHOD setClip
   METHOD setKeepMouseGrab
   METHOD setParentItem
   METHOD setSmooth
   METHOD setTransformOrigin
   METHOD smooth
   METHOD transformOrigin
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDeclarativeItem>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDeclarativeItem>
#endif
#endif

/*
QDeclarativeItem ( QDeclarativeItem * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeItem * par1 = (QDeclarativeItem *) _qtxhb_itemGetPtr(1);
  QDeclarativeItem * o = new QDeclarativeItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDECLARATIVEITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal baselineOffset () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_BASELINEOFFSET )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->baselineOffset (  ) );
  }
}


/*
QDeclarativeItem * childAt ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDAT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QDeclarativeItem * ptr = obj->childAt ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEITEM" );
  }
}


/*
QRectF childrenRect ()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDRENRECT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->childrenRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool clip () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CLIP )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->clip (  ) );
  }
}


/*
void forceActiveFocus ()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_FORCEACTIVEFOCUS )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forceActiveFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal implicitHeight () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_IMPLICITHEIGHT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->implicitHeight (  ) );
  }
}


/*
qreal implicitWidth () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_IMPLICITWIDTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->implicitWidth (  ) );
  }
}


/*
bool keepMouseGrab () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_KEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->keepMouseGrab (  ) );
  }
}


/*
QScriptValue mapFromItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPFROMITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    QScriptValue * ptr = new QScriptValue( obj->mapFromItem ( *par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPTOITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    QScriptValue * ptr = new QScriptValue( obj->mapToItem ( *par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QDeclarativeItem * parentItem () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_PARENTITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeItem * ptr = obj->parentItem (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEITEM" );
  }
}


/*
void setBaselineOffset ( qreal )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETBASELINEOFFSET )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBaselineOffset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClip ( bool )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETCLIP )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClip ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeepMouseGrab ( bool keep )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETKEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeepMouseGrab ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParentItem ( QDeclarativeItem * parent )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETPARENTITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeItem * par1 = (QDeclarativeItem *) _qtxhb_itemGetPtr(1);
    obj->setParentItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSmooth ( bool smooth )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETSMOOTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSmooth ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransformOrigin ( TransformOrigin origin )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETTRANSFORMORIGIN )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTransformOrigin (  (QDeclarativeItem::TransformOrigin) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool smooth () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SMOOTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->smooth (  ) );
  }
}


/*
TransformOrigin transformOrigin () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_TRANSFORMORIGIN )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->transformOrigin (  ) );
  }
}



#pragma ENDDUMP
