/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSCRIPTVALUE
#endif

CLASS QDeclarativeItem INHERIT QGraphicsObject,QDeclarativeParserStatus

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
#include <QDeclarativeItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeItem>
#endif

/*
QDeclarativeItem ( QDeclarativeItem * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQDECLARATIVEITEM(1)||ISNIL(1)) )
  {
    QDeclarativeItem * par1 = (QDeclarativeItem *) _qt5xhb_itemGetPtr(1);
    QDeclarativeItem * o = new QDeclarativeItem ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEITEM_DELETE )
{
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
}

/*
qreal baselineOffset () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_BASELINEOFFSET )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QDeclarativeItem * ptr = obj->childAt ( PQREAL(1), PQREAL(2) );
      _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF childrenRect ()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDRENRECT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->childrenRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
bool clip () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CLIP )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSCRIPTVALUE(1) && ISNUM(2) && ISNUM(3) )
    {
      QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
      QScriptValue * ptr = new QScriptValue( obj->mapFromItem ( *par1, PQREAL(2), PQREAL(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPTOITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSCRIPTVALUE(1) && ISNUM(2) && ISNUM(3) )
    {
      QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
      QScriptValue * ptr = new QScriptValue( obj->mapToItem ( *par1, PQREAL(2), PQREAL(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDeclarativeItem * parentItem () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_PARENTITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDeclarativeItem * ptr = obj->parentItem (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEITEM" );
  }
}

/*
void setBaselineOffset ( qreal )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETBASELINEOFFSET )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setBaselineOffset ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClip ( bool )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETCLIP )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setClip ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKeepMouseGrab ( bool keep )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETKEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setKeepMouseGrab ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParentItem ( QDeclarativeItem * parent )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETPARENTITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDECLARATIVEITEM(1) )
    {
      QDeclarativeItem * par1 = (QDeclarativeItem *) _qt5xhb_itemGetPtr(1);
      obj->setParentItem ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSmooth ( bool smooth )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETSMOOTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSmooth ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformOrigin ( TransformOrigin origin )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETTRANSFORMORIGIN )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTransformOrigin (  (QDeclarativeItem::TransformOrigin) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool smooth () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SMOOTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QDeclarativeItem * obj = (QDeclarativeItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->transformOrigin (  ) );
  }
}

#pragma ENDDUMP
