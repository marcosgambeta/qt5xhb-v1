/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSemaphore

   DATA pointer
   DATA class_id INIT Class_Id_QSemaphore
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD tryAcquire1
   METHOD tryAcquire2
   METHOD tryAcquire
   METHOD release
   METHOD available
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSemaphore>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSemaphore>
#endif
#endif

/*
QSemaphore(int n = 0)
*/
HB_FUNC_STATIC( QSEMAPHORE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = ISNIL(1)? 0 : hb_parni(1);
  QSemaphore * o = new QSemaphore ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSemaphore *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSEMAPHORE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void acquire(int n = 1)
*/
HB_FUNC_STATIC( QSEMAPHORE_ACQUIRE )
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->acquire ( (int) ISNIL(1)? 1 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryAcquire(int n = 1)
*/
HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE1 )
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->tryAcquire ( (int) ISNIL(1)? 1 : hb_parni(1) ) );
  }
}


/*
bool tryAcquire(int n, int timeout)
*/
HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE2 )
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->tryAcquire ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}


//[1]bool tryAcquire(int n = 1)
//[2]bool tryAcquire(int n, int timeout)

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void release(int n = 1)
*/
HB_FUNC_STATIC( QSEMAPHORE_RELEASE )
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release ( (int) ISNIL(1)? 1 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int available() const
*/
HB_FUNC_STATIC( QSEMAPHORE_AVAILABLE )
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->available (  ) );
  }
}



HB_FUNC_STATIC( QSEMAPHORE_NEWFROM )
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

HB_FUNC_STATIC( QSEMAPHORE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSEMAPHORE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSEMAPHORE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSEMAPHORE_SETSELFDESTRUCTION )
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