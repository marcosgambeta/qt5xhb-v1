/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
#endif

CLASS QAxBindable

   DATA pointer
   DATA class_id INIT Class_Id_QAxBindable
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD readData
   METHOD reportError
   METHOD writeData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxBindable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAxBindable>
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
#include <QAxBindable>
#endif

/*
QAxBindable ()
*/
HB_FUNC_STATIC( QAXBINDABLE_NEW )
{
  QAxBindable * o = new QAxBindable (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxBindable *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QAXBINDABLE_DELETE )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAxAggregated * createAggregate ()
*/
HB_FUNC_STATIC( QAXBINDABLE_CREATEAGGREGATE )
{
  QAxBindable * obj = (QAxBindable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAxAggregated * ptr = obj->createAggregate (  );
    _qt5xhb_createReturnClass ( ptr, "QAXAGGREGATED" );
  }
}


/*
virtual bool readData ( QIODevice * source, const QString & format )
*/
HB_FUNC_STATIC( QAXBINDABLE_READDATA )
{
  QAxBindable * obj = (QAxBindable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->readData ( par1, par2 ) );
  }
}


/*
void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
*/
HB_FUNC_STATIC( QAXBINDABLE_REPORTERROR )
{
  QAxBindable * obj = (QAxBindable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
    obj->reportError ( (int) hb_parni(1), par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool writeData ( QIODevice * sink )
*/
HB_FUNC_STATIC( QAXBINDABLE_WRITEDATA )
{
  QAxBindable * obj = (QAxBindable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->writeData ( par1 ) );
  }
}



HB_FUNC_STATIC( QAXBINDABLE_NEWFROM )
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

HB_FUNC_STATIC( QAXBINDABLE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAXBINDABLE_NEWFROM );
}

HB_FUNC_STATIC( QAXBINDABLE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAXBINDABLE_NEWFROM );
}

HB_FUNC_STATIC( QAXBINDABLE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAXBINDABLE_SETSELFDESTRUCTION )
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