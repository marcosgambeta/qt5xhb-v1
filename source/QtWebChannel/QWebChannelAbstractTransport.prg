/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QWebChannelAbstractTransport INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD sendMessage

   METHOD onMessageReceived

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebChannelAbstractTransport
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannelAbstractTransport>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannelAbstractTransport>
#endif
#endif

/*
explicit QWebChannelAbstractTransport(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QWebChannelAbstractTransport * o = new QWebChannelAbstractTransport ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannelAbstractTransport * obj = (QWebChannelAbstractTransport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void sendMessage(const QJsonObject &message) = 0
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_SENDMESSAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannelAbstractTransport * obj = (QWebChannelAbstractTransport *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonObject * par1 = (QJsonObject *) _qt5xhb_itemGetPtr(1);
    obj->sendMessage ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
