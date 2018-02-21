/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QCameraInfoControl INHERIT QMediaControl

   METHOD delete

   METHOD cameraOrientation
   METHOD cameraPosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraInfoControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QCameraInfoControl>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QCameraInfoControl>
#endif
#endif

/*
explicit QCameraInfoControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QCameraInfoControl()
*/
HB_FUNC_STATIC( QCAMERAINFOCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfoControl * obj = (QCameraInfoControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QCamera::Position cameraPosition(const QString &deviceName) const = 0
*/
HB_FUNC_STATIC( QCAMERAINFOCONTROL_CAMERAPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfoControl * obj = (QCameraInfoControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RENUM( obj->cameraPosition ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual int cameraOrientation(const QString &deviceName) const = 0
*/
HB_FUNC_STATIC( QCAMERAINFOCONTROL_CAMERAORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfoControl * obj = (QCameraInfoControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->cameraOrientation ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

#pragma ENDDUMP
