/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVECTOR3D

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   DATA class_id INIT Class_Id_QGraphicsRotation
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis1
   METHOD setAxis2
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsRotation>
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
#include <QGraphicsRotation>
#endif
#endif

/*
QGraphicsRotation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QGraphicsRotation * o = new QGraphicsRotation ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsRotation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGRAPHICSROTATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
qreal angle () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->angle (  ) );
  }
}


/*
QVector3D axis () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_AXIS )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->axis (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->origin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setAngle ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAngle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAxis ( const QVector3D & axis )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS1 )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    obj->setAxis ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAxis ( Qt::Axis axis )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS2 )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
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
    HB_FUNC_EXEC( QGRAPHICSROTATION_SETAXIS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSROTATION_SETAXIS2 );
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
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    obj->setOrigin ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_APPLYTO )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix4x4 * par1 = (QMatrix4x4 *) _qtxhb_itemGetPtr(1);
    obj->applyTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
