/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QLockFile

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lock
   METHOD tryLock
   METHOD unlock
   METHOD setStaleLockTime
   METHOD staleLockTime
   METHOD isLocked
   METHOD getLockInfo
   METHOD removeStaleLockFile

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLockFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLockFile>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLockFile>
#endif
#endif

/*
QLockFile(const QString &fileName)
*/
HB_FUNC_STATIC( QLOCKFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLockFile * o = new QLockFile ( PQSTRING(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QLOCKFILE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool lock()
*/
HB_FUNC_STATIC( QLOCKFILE_LOCK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->lock () );
  }
#endif
}

/*
bool tryLock(int timeout = 0)
*/
HB_FUNC_STATIC( QLOCKFILE_TRYLOCK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      RBOOL( obj->tryLock ( OPINT(1,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void unlock()
*/
HB_FUNC_STATIC( QLOCKFILE_UNLOCK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unlock ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setStaleLockTime(int)
*/
HB_FUNC_STATIC( QLOCKFILE_SETSTALELOCKTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStaleLockTime ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int staleLockTime() const
*/
HB_FUNC_STATIC( QLOCKFILE_STALELOCKTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->staleLockTime () );
  }
#endif
}

/*
bool isLocked() const
*/
HB_FUNC_STATIC( QLOCKFILE_ISLOCKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isLocked () );
  }
#endif
}

/*
bool getLockInfo(qint64 *pid, QString *hostname, QString *appname) const
*/
HB_FUNC_STATIC( QLOCKFILE_GETLOCKINFO ) // TODO: revisar implementacao do metodo e corrigir(?)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISPOINTER(1) && ISCHAR(2) && ISCHAR(3) )
    {
      qint64 * par1 = (qint64 *) _qt5xhb_itemGetPtr(1);
      QString par2 = hb_parc(2);
      QString par3 = hb_parc(3);
      RBOOL( obj->getLockInfo ( par1, &par2, &par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool removeStaleLockFile()
*/
HB_FUNC_STATIC( QLOCKFILE_REMOVESTALELOCKFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLockFile * obj = (QLockFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->removeStaleLockFile () );
  }
#endif
}

HB_FUNC_STATIC( QLOCKFILE_NEWFROM )
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

HB_FUNC_STATIC( QLOCKFILE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLOCKFILE_NEWFROM );
}

HB_FUNC_STATIC( QLOCKFILE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLOCKFILE_NEWFROM );
}

HB_FUNC_STATIC( QLOCKFILE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLOCKFILE_SETSELFDESTRUCTION )
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
