/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionGraphicsItem INHERIT QStyleOption

   METHOD new

   METHOD levelOfDetailFromTransform

   METHOD exposedRect
   METHOD matrix
   METHOD levelOfDetail

   METHOD setExposedRect
   METHOD setMatrix
   METHOD setLevelOfDetail

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionGraphicsItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionGraphicsItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionGraphicsItem>
#endif

/*
QStyleOptionGraphicsItem()
*/
void QStyleOptionGraphicsItem_new1 ()
{
  QStyleOptionGraphicsItem * o = new QStyleOptionGraphicsItem ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionGraphicsItem(const QStyleOptionGraphicsItem &other)
*/
void QStyleOptionGraphicsItem_new2 ()
{
  QStyleOptionGraphicsItem * o = new QStyleOptionGraphicsItem ( *PQSTYLEOPTIONGRAPHICSITEM(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionGraphicsItem(int version) (protected)
*/

//[1]QStyleOptionGraphicsItem()
//[2]QStyleOptionGraphicsItem(const QStyleOptionGraphicsItem &other)
//[3]QStyleOptionGraphicsItem(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionGraphicsItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONGRAPHICSITEM(1) )
  {
    QStyleOptionGraphicsItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static qreal levelOfDetailFromTransform(const QTransform &worldTransform)
*/
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_LEVELOFDETAILFROMTRANSFORM )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
      RQREAL( QStyleOptionGraphicsItem::levelOfDetailFromTransform ( *PQTRANSFORM(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF exposedRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_EXPOSEDRECT )
{
  QStyleOptionGraphicsItem * obj = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->exposedRect );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_SETEXPOSEDRECT )
{
  QStyleOptionGraphicsItem * obj = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
      obj->exposedRect = *PQRECTF(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMatrix matrix
*/
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_MATRIX )
{
  QStyleOptionGraphicsItem * obj = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMatrix * ptr = new QMatrix( obj->matrix );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_SETMATRIX )
{
  QStyleOptionGraphicsItem * obj = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMATRIX(1) )
    {
      obj->matrix = *PQMATRIX(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal levelOfDetail
*/
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_LEVELOFDETAIL )
{
  QStyleOptionGraphicsItem * obj = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->levelOfDetail );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_SETLEVELOFDETAIL )
{
  QStyleOptionGraphicsItem * obj = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->levelOfDetail = PQREAL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
