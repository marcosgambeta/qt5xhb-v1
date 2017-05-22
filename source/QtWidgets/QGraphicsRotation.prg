/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis
   METHOD setOrigin
   METHOD applyTo

   METHOD onAngleChanged
   METHOD onAxisChanged
   METHOD onOriginChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsRotation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsRotation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsRotation>
#endif

/*
QGraphicsRotation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QGraphicsRotation * o = new QGraphicsRotation ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSROTATION_DELETE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal angle () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->angle () );
  }
}


/*
QVector3D axis () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_AXIS )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->axis () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->origin () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setAngle ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAngle ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAxis ( const QVector3D & axis )
*/
void QGraphicsRotation_setAxis1 ()
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qt5xhb_itemGetPtr(1);
    obj->setAxis ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAxis ( Qt::Axis axis )
*/
void QGraphicsRotation_setAxis2 ()
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAxis (  (Qt::Axis) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAxis ( const QVector3D & axis )
//[2]void setAxis ( Qt::Axis axis )

HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QGraphicsRotation_setAxis1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsRotation_setAxis2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setOrigin ( const QVector3D & point )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qt5xhb_itemGetPtr(1);
    obj->setOrigin ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_APPLYTO )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix4x4 * par1 = (QMatrix4x4 *) _qt5xhb_itemGetPtr(1);
    obj->applyTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
