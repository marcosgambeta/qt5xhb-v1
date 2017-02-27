/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsScale INHERIT QGraphicsTransform

   DATA class_id INIT Class_Id_QGraphicsScale
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD origin
   METHOD setOrigin
   METHOD setXScale
   METHOD setYScale
   METHOD setZScale
   METHOD xScale
   METHOD yScale
   METHOD zScale
   METHOD applyTo
   METHOD onOriginChanged
   METHOD onScaleChanged
   METHOD onXScaleChanged
   METHOD onYScaleChanged
   METHOD onZScaleChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsScale
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsScale>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsScale>
#endif
#endif

/*
QGraphicsScale ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QGraphicsScale * o = new QGraphicsScale ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QGRAPHICSSCALE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsScale * obj = (QGraphicsScale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_ORIGIN )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->origin (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setOrigin ( const QVector3D & point )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETORIGIN )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qt5xhb_itemGetPtr(1);
    obj->setOrigin ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setXScale ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETXSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setXScale ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setYScale ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETYSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setYScale ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZScale ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETZSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setZScale ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal xScale () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_XSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->xScale (  ) );
  }
}


/*
qreal yScale () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_YSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->yScale (  ) );
  }
}


/*
qreal zScale () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_ZSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->zScale (  ) );
  }
}


/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_APPLYTO )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix4x4 * par1 = (QMatrix4x4 *) _qt5xhb_itemGetPtr(1);
    obj->applyTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
