/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QDateTimeAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete
   METHOD min
   METHOD setMin
   METHOD max
   METHOD setMax
   METHOD format
   METHOD setFormat
   METHOD tickCount
   METHOD setTickCount
   METHOD type
   METHOD setRange

   METHOD onFormatChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onRangeChanged
   METHOD onTickCountChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDateTimeAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QDateTimeAxis>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QDateTimeAxis>
#endif
#endif

#include <QtCore/QDateTime>

using namespace QtCharts;

/*
QDateTimeAxis( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QDATETIMEAXIS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QDateTimeAxis * obj = new QDateTimeAxis( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QDateTimeAxis()
*/
HB_FUNC_STATIC( QDATETIMEAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
QDateTime min() const
*/
HB_FUNC_STATIC( QDATETIMEAXIS_MIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->min() );
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMin( QDateTime min )
*/
HB_FUNC_STATIC( QDATETIMEAXIS_SETMIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      obj->setMin( *PQDATETIME(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QDateTime max() const
*/
HB_FUNC_STATIC( QDATETIMEAXIS_MAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->max() );
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMax( QDateTime max )
*/
HB_FUNC_STATIC( QDATETIMEAXIS_SETMAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      obj->setMax( *PQDATETIME(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString format() const
*/
HB_FUNC_STATIC( QDATETIMEAXIS_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->format() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setFormat( QString format )
*/
HB_FUNC_STATIC( QDATETIMEAXIS_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setFormat( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int tickCount() const
*/
HB_FUNC_STATIC( QDATETIMEAXIS_TICKCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->tickCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTickCount( int count )
*/
HB_FUNC_STATIC( QDATETIMEAXIS_SETTICKCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTickCount( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractAxis::AxisType type() const
*/
HB_FUNC_STATIC( QDATETIMEAXIS_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRange( QDateTime min, QDateTime max )
*/
HB_FUNC_STATIC( QDATETIMEAXIS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxis * obj = (QDateTimeAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDATETIME(1) && ISQDATETIME(2) )
    {
#endif
      obj->setRange( *PQDATETIME(1), *PQDATETIME(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

void QDateTimeAxisSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QDATETIMEAXIS_ONFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxisSlots_connect_signal("formatChanged(QString)", "formatChanged(QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QDATETIMEAXIS_ONMAXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxisSlots_connect_signal("maxChanged(QDateTime)", "maxChanged(QDateTime)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QDATETIMEAXIS_ONMINCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxisSlots_connect_signal("minChanged(QDateTime)", "minChanged(QDateTime)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QDATETIMEAXIS_ONRANGECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxisSlots_connect_signal("rangeChanged(QDateTime,QDateTime)", "rangeChanged(QDateTime,QDateTime)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QDATETIMEAXIS_ONTICKCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QDateTimeAxisSlots_connect_signal("tickCountChanged(int)", "tickCountChanged(int)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
