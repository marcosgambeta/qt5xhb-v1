/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstractOAuthReplyHandler INHERIT QObject

   METHOD delete
   METHOD callback
   METHOD networkReplyFinished

   METHOD onCallbackDataReceived
   METHOD onReplyDataReceived

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractOAuthReplyHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>
#endif
#endif

/*
virtual ~QAbstractOAuthReplyHandler()
*/
HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual QString callback() const = 0
*/
HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_CALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callback() );
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
virtual void networkReplyFinished( QNetworkReply * reply ) = 0
*/
HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_NETWORKREPLYFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandler * obj = (QAbstractOAuthReplyHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREPLY(1) )
    {
#endif
      obj->networkReplyFinished( PQNETWORKREPLY(1) );
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

void QAbstractOAuthReplyHandlerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_ONCALLBACKDATARECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandlerSlots_connect_signal( "callbackDataReceived(QByteArray)", "callbackDataReceived(QByteArray)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTOAUTHREPLYHANDLER_ONREPLYDATARECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuthReplyHandlerSlots_connect_signal( "replyDataReceived(QByteArray)", "replyDataReceived(QByteArray)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
