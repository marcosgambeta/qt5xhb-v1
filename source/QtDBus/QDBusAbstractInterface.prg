/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
#endif

CLASS QDBusAbstractInterface INHERIT QDBusAbstractInterfaceBase

   DATA class_id INIT Class_Id_QDBusAbstractInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isValid
   METHOD connection
   METHOD service
   METHOD path
   METHOD interface
   METHOD lastError
   METHOD setTimeout
   METHOD timeout
   METHOD call1
   METHOD call2
   METHOD call
   METHOD callWithArgumentList
   METHOD callWithCallback1
   METHOD callWithCallback2
   METHOD callWithCallback
   METHOD asyncCall
   METHOD asyncCallWithArgumentList
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusAbstractInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusAbstractInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusAbstractInterface>
#endif


HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_DELETE )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_ISVALID )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CONNECTION )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnection * ptr = new QDBusConnection( obj->connection (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
  }
}


/*
QString service() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_SERVICE )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->service (  ).toLatin1().data() );
  }
}


/*
QString path() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_PATH )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}


/*
QString interface() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_INTERFACE )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->interface (  ).toLatin1().data() );
  }
}


/*
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_LASTERROR )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusError * ptr = new QDBusError( obj->lastError (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSERROR" );
  }
}


/*
void setTimeout(int timeout)
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_SETTIMEOUT )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTimeout ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int timeout() const
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_TIMEOUT )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timeout (  ) );
  }
}


/*
QDBusMessage call(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALL1 )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(9);
    QDBusMessage * ptr = new QDBusMessage( obj->call ( par1, par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}

/*
QDBusMessage call(QDBus::CallMode mode,const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALL2 )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(9);
    QVariant par10 = ISNIL(10)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(10);
    QDBusMessage * ptr = new QDBusMessage( obj->call (  (QDBus::CallMode) par1, par2, par3, par4, par5, par6, par7, par8, par9, par10 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


//[1]QDBusMessage call(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
//[2]QDBusMessage call(QDBus::CallMode mode,const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALL )
{
  // TODO: implementar
}

/*
QDBusMessage callWithArgumentList(QDBus::CallMode mode,const QString &method,const QList<QVariant> &args)
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHARGUMENTLIST )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QList<QVariant> par3;
    PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
    int i3;
    int nLen3 = hb_arrayLen(aList3);
    for (i3=0;i3<nLen3;i3++)
    {
      par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
    }
    QDBusMessage * ptr = new QDBusMessage( obj->callWithArgumentList (  (QDBus::CallMode) par1, par2, par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


/*
bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member, const char *errorSlot)
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK1 )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QObject * par3 = (QObject *) _qt5xhb_itemGetPtr(3);
    const char * par4 = hb_parc(4);
    const char * par5 = hb_parc(5);
    hb_retl( obj->callWithCallback ( par1, par2, par3,  (const char *) par4,  (const char *) par5 ) );
  }
}

/*
bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member)
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK2 )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QObject * par3 = (QObject *) _qt5xhb_itemGetPtr(3);
    const char * par4 = hb_parc(4);
    hb_retl( obj->callWithCallback ( par1, par2, par3,  (const char *) par4 ) );
  }
}


//[1]bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member, const char *errorSlot)
//[2]bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member)

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK )
{
  // TODO: implementar
}

/*
QDBusPendingCall asyncCall(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_ASYNCCALL )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(9);
    QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCall ( par1, par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
  }
}


/*
QDBusPendingCall asyncCallWithArgumentList(const QString &method,const QList<QVariant> &args)
*/
HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_ASYNCCALLWITHARGUMENTLIST )
{
  QDBusAbstractInterface * obj = (QDBusAbstractInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCallWithArgumentList ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
  }
}



#pragma ENDDUMP
