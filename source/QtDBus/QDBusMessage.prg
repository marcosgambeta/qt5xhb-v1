/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusMessage

   DATA pointer
   DATA class_id INIT Class_Id_QDBusMessage
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD createReply1
   METHOD createReply2
   METHOD createReply
   METHOD createErrorReply1
   METHOD createErrorReply2
   METHOD createErrorReply3
   METHOD createErrorReply
   METHOD service
   METHOD path
   METHOD interface
   METHOD member
   METHOD errorName
   METHOD errorMessage
   METHOD type
   METHOD signature
   METHOD isReplyRequired
   METHOD setDelayedReply
   METHOD isDelayedReply
   METHOD setAutoStartService
   METHOD autoStartService
   METHOD setArguments
   METHOD arguments
   METHOD createSignal
   METHOD createMethodCall
   METHOD createError1
   METHOD createError2
   METHOD createError3
   METHOD createError
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusMessage>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusMessage>
#endif

/*
QDBusMessage()
*/
HB_FUNC_STATIC( QDBUSMESSAGE_NEW1 )
{
  QDBusMessage * o = new QDBusMessage (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusMessage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QDBusMessage(const QDBusMessage &other)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_NEW2 )
{
  QDBusMessage * o = new QDBusMessage (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusMessage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDBusMessage()
//[2]QDBusMessage(const QDBusMessage &other)

HB_FUNC_STATIC( QDBUSMESSAGE_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSMESSAGE_DELETE )
{
  QDBusMessage * obj = (QDBusMessage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY1 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVariant> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    QDBusMessage * ptr = new QDBusMessage( obj->createReply ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage createReply(const QVariant &argument) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY2 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
    QDBusMessage * ptr = new QDBusMessage( obj->createReply ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


//[1]QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
//[2]QDBusMessage createReply(const QVariant &argument) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY )
{
  // TODO: implementar
}

/*
QDBusMessage createErrorReply(const QString name, const QString &msg) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY1 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage createErrorReply(const QDBusError &err) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY2 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY3 )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QDBusMessage * ptr = new QDBusMessage( obj->createErrorReply (  (QDBusError::ErrorType) par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


//[1]QDBusMessage createErrorReply(const QString name, const QString &msg) const
//[2]QDBusMessage createErrorReply(const QDBusError &err) const
//[3]QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY )
{
  // TODO: implementar
}

/*
QString service() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->service (  ).toLatin1().data() );
  }
}


/*
QString path() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_PATH )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}


/*
QString interface() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_INTERFACE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->interface (  ).toLatin1().data() );
  }
}


/*
QString member() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_MEMBER )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->member (  ).toLatin1().data() );
  }
}


/*
QString errorName() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ERRORNAME )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorName (  ).toLatin1().data() );
  }
}


/*
QString errorMessage() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ERRORMESSAGE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorMessage (  ).toLatin1().data() );
  }
}


/*
MessageType type() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_TYPE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
QString signature() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SIGNATURE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->signature (  ).toLatin1().data() );
  }
}


/*
bool isReplyRequired() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISREPLYREQUIRED )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReplyRequired (  ) );
  }
}


/*
void setDelayedReply(bool enable) const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETDELAYEDREPLY )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDelayedReply ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isDelayedReply() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ISDELAYEDREPLY )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDelayedReply (  ) );
  }
}


/*
void setAutoStartService(bool enable)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETAUTOSTARTSERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoStartService ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoStartService() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_AUTOSTARTSERVICE )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoStartService (  ) );
  }
}


/*
void setArguments(const QList<QVariant> &arguments)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_SETARGUMENTS )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVariant> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setArguments ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QVariant> arguments() const
*/
HB_FUNC_STATIC( QDBUSMESSAGE_ARGUMENTS )
{
  QDBusMessage * obj = (QDBusMessage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVariant> list = obj->arguments (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QVARIANT" );
    #else
    pDynSym = hb_dynsymFindName( "QVARIANT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QVariant *) new QVariant ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
static QDBusMessage createSignal(const QString &path, const QString &interface,const QString &name)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATESIGNAL )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createSignal ( par1, par2, par3 ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}


/*
static QDBusMessage createMethodCall(const QString &destination, const QString &path,const QString &interface, const QString &method)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEMETHODCALL )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  QString par4 = QLatin1String( hb_parc(4) );
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createMethodCall ( par1, par2, par3, par4 ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}


/*
static QDBusMessage createError(const QString &name, const QString &msg)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError ( par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}

/*
static inline QDBusMessage createError(const QDBusError &err)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR2 )
{
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}

/*
static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)
*/
HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR3 )
{
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QDBusMessage * ptr = new QDBusMessage( QDBusMessage::createError (  (QDBusError::ErrorType) par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
}


//[1]static QDBusMessage createError(const QString &name, const QString &msg)
//[2]static inline QDBusMessage createError(const QDBusError &err)
//[3]static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR )
{
  // TODO: implementar
}


HB_FUNC_STATIC( QDBUSMESSAGE_NEWFROM )
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

HB_FUNC_STATIC( QDBUSMESSAGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QDBUSMESSAGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QDBUSMESSAGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSMESSAGE_SETSELFDESTRUCTION )
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