/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q3DSCENE
REQUEST QVECTOR3D
#endif

CLASS Q3DObject INHERIT QObject

   METHOD new
   METHOD delete
   METHOD parentScene
   METHOD position
   METHOD setPosition
   METHOD copyValuesFrom

   METHOD onPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DObject>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DObject>
#endif

#include <QtDataVisualization/Q3DScene>

using namespace QtDataVisualization;

/*
Q3DObject( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( Q3DOBJECT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    Q3DObject * obj = new Q3DObject( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~Q3DObject()
*/
HB_FUNC_STATIC( Q3DOBJECT_DELETE )
{
  Q3DObject * obj = (Q3DObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Q3DScene * parentScene()
*/
HB_FUNC_STATIC( Q3DOBJECT_PARENTSCENE )
{
  Q3DObject * obj = (Q3DObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DScene * ptr = obj->parentScene();
      Qt5xHb::createReturnQObjectClass(ptr, "Q3DSCENE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVector3D position() const
*/
HB_FUNC_STATIC( Q3DOBJECT_POSITION )
{
  Q3DObject * obj = (Q3DObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->position() );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setPosition( const QVector3D & position )
*/
HB_FUNC_STATIC( Q3DOBJECT_SETPOSITION )
{
  Q3DObject * obj = (Q3DObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setPosition( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void copyValuesFrom( const Q3DObject & source )
*/
HB_FUNC_STATIC( Q3DOBJECT_COPYVALUESFROM )
{
  Q3DObject * obj = (Q3DObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DOBJECT(1) )
    {
#endif
      obj->copyValuesFrom( *PQ3DOBJECT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void Q3DObjectSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( Q3DOBJECT_ONPOSITIONCHANGED )
{
  Q3DObjectSlots_connect_signal("positionChanged(QVector3D)", "positionChanged(QVector3D)");
}

#pragma ENDDUMP
