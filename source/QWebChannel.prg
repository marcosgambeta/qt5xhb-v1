/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QWebChannel INHERIT QObject

   DATA class_id INIT Class_Id_QWebChannel
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD registerObject
   METHOD deregisterObject
   METHOD blockUpdates
   METHOD setBlockUpdates
   METHOD connectTo
   METHOD disconnectFrom
   METHOD obBlockUpdatesChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebChannel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannel>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannel>
#endif
#endif

/*
explicit QWebChannel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWEBCHANNEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QWebChannel * o = new QWebChannel ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebChannel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWEBCHANNEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Q_INVOKABLE void registerObject(const QString &id, QObject *object)
*/
HB_FUNC_STATIC( QWEBCHANNEL_REGISTEROBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    obj->registerObject ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Q_INVOKABLE void deregisterObject(QObject *object)
*/
HB_FUNC_STATIC( QWEBCHANNEL_DEREGISTEROBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->deregisterObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool blockUpdates() const
*/
HB_FUNC_STATIC( QWEBCHANNEL_BLOCKUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->blockUpdates (  ) );
  }
#endif
}

/*
void setBlockUpdates(bool block)
*/
HB_FUNC_STATIC( QWEBCHANNEL_SETBLOCKUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlockUpdates ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void connectTo(QWebChannelAbstractTransport *transport)
*/
HB_FUNC_STATIC( QWEBCHANNEL_CONNECTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebChannelAbstractTransport * par1 = (QWebChannelAbstractTransport *) _qtxhb_itemGetPtr(1);
    obj->connectTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void disconnectFrom(QWebChannelAbstractTransport *transport)
*/
HB_FUNC_STATIC( QWEBCHANNEL_DISCONNECTFROM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebChannelAbstractTransport * par1 = (QWebChannelAbstractTransport *) _qtxhb_itemGetPtr(1);
    obj->disconnectFrom ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
