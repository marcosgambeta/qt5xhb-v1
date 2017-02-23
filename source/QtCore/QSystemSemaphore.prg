/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSystemSemaphore

   DATA pointer
   DATA class_id INIT Class_Id_QSystemSemaphore
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD acquire
   METHOD release
   METHOD error
   METHOD errorString
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSystemSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSystemSemaphore>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSystemSemaphore>
#endif
#endif

/*
QSystemSemaphore(const QString &key, int initialValue = 0, AccessMode mode = Open)
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? 0 : hb_parni(2);
  int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
  QSystemSemaphore * o = new QSystemSemaphore ( par1, par2,  (QSystemSemaphore::AccessMode) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSystemSemaphore *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSYSTEMSEMAPHORE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setKey(const QString &key, int initialValue = 0, AccessMode mode = Open)
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SETKEY )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
    obj->setKey ( par1, (int) ISNIL(2)? 0 : hb_parni(2),  (QSystemSemaphore::AccessMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString key() const
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_KEY )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->key (  ).toLatin1().data() );
  }
}


/*
bool acquire()
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ACQUIRE )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->acquire (  ) );
  }
}


/*
bool release(int n = 1)
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_RELEASE )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->release ( (int) ISNIL(1)? 1 : hb_parni(1) ) );
  }
}


/*
SystemSemaphoreError error() const
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ERROR )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ERRORSTRING )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEWFROM )
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

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSYSTEMSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSYSTEMSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SETSELFDESTRUCTION )
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