/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QWebSocketCorsAuthenticator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD origin
   METHOD allowed
   METHOD setAllowed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSocketCorsAuthenticator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketCorsAuthenticator>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketCorsAuthenticator>
#endif
#endif

#include <QString>
#include <QLatin1String>

/*
explicit QWebSocketCorsAuthenticator(const QString &origin)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * o = new QWebSocketCorsAuthenticator ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * o = new QWebSocketCorsAuthenticator ( *PQWEBSOCKETCORSAUTHENTICATOR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]explicit QWebSocketCorsAuthenticator(const QString &origin)
//[2]explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBSOCKETCORSAUTHENTICATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWEBSOCKETCORSAUTHENTICATOR(1) )
  {
    HB_FUNC_EXEC( QWEBSOCKETCORSAUTHENTICATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QWebSocketCorsAuthenticator &other)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSocketCorsAuthenticator * par1 = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString origin() const
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_ORIGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->origin () );
  }
#endif
}


/*
bool allowed() const
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_ALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->allowed () );
  }
#endif
}

/*
void setAllowed(bool allowed)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_SETALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAllowed ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBSOCKETCORSAUTHENTICATOR_NEWFROM );
}

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBSOCKETCORSAUTHENTICATOR_NEWFROM );
}

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
