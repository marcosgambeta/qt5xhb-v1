/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
REQUEST QDBUSMESSAGE
#endif

CLASS QDBusContext

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD calledFromDBus
   METHOD connection
   METHOD message
   METHOD isDelayedReply
   METHOD setDelayedReply
   METHOD sendErrorReply1
   METHOD sendErrorReply2
   METHOD sendErrorReply

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusContext>
#endif

/*
QDBusContext()
*/
HB_FUNC_STATIC( QDBUSCONTEXT_NEW )
{
  QDBusContext * o = new QDBusContext ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDBUSCONTEXT_DELETE )
{
  QDBusContext * obj = (QDBusContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool calledFromDBus() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_CALLEDFROMDBUS )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->calledFromDBus () );
  }
}


/*
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_CONNECTION )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnection * ptr = new QDBusConnection( obj->connection () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
  }
}


/*
const QDBusMessage &message() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_MESSAGE )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QDBusMessage * ptr = &obj->message ();
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


/*
bool isDelayedReply() const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_ISDELAYEDREPLY )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDelayedReply () );
  }
}


/*
void setDelayedReply(bool enable) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SETDELAYEDREPLY )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDelayedReply ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sendErrorReply(const QString &name, const QString &msg = QString()) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY1 )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->sendErrorReply ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
*/
HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY2 )
{
  QDBusContext * obj = (QDBusContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->sendErrorReply (  (QDBusError::ErrorType) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
//[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERROREPLY )
{
  // TODO: implementar
}


HB_FUNC_STATIC( QDBUSCONTEXT_NEWFROM )
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

HB_FUNC_STATIC( QDBUSCONTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSCONTEXT_SETSELFDESTRUCTION )
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