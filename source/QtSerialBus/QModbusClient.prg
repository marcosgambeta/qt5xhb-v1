/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QModbusClient INHERIT QModbusDevice

   METHOD new
   METHOD delete
   METHOD timeout
   METHOD setTimeout
   METHOD numberOfRetries
   METHOD setNumberOfRetries

   METHOD onTimeoutChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusClient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusClient>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusClient>
#endif
#endif

/*
explicit QModbusClient(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QMODBUSCLIENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QModbusClient * obj = new QModbusClient( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QModbusClient(QModbusClientPrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusClient()
*/
HB_FUNC_STATIC( QMODBUSCLIENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
int timeout() const
*/
HB_FUNC_STATIC( QMODBUSCLIENT_TIMEOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->timeout() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setTimeout(int newTimeout)
*/
HB_FUNC_STATIC( QMODBUSCLIENT_SETTIMEOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTimeout( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QModbusReply *sendReadRequest(const QModbusDataUnit &read, int serverAddress)
*/

/*
QModbusReply *sendWriteRequest(const QModbusDataUnit &write, int serverAddress)
*/

/*
QModbusReply *sendReadWriteRequest(const QModbusDataUnit &read, const QModbusDataUnit &write, int serverAddress)
*/

/*
QModbusReply *sendRawRequest(const QModbusRequest &request, int serverAddress)
*/

/*
int numberOfRetries() const
*/
HB_FUNC_STATIC( QMODBUSCLIENT_NUMBEROFRETRIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->numberOfRetries() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setNumberOfRetries(int number)
*/
HB_FUNC_STATIC( QMODBUSCLIENT_SETNUMBEROFRETRIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setNumberOfRetries( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual bool processResponse(const QModbusResponse &response, QModbusDataUnit *data) [protected]
*/

/*
virtual bool processPrivateResponse(const QModbusResponse &response, QModbusDataUnit *data) [protected]
*/

void QModbusClientSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMODBUSCLIENT_ONTIMEOUTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClientSlots_connect_signal( "timeoutChanged(int)", "timeoutChanged(int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
