/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSharedMemory INHERIT QObject

   DATA class_id INIT Class_Id_QSharedMemory
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD setNativeKey
   METHOD nativeKey
   METHOD create
   METHOD size
   METHOD attach
   METHOD isAttached
   METHOD detach
   METHOD data
   METHOD lock
   METHOD unlock
   METHOD error
   METHOD errorString
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSharedMemory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSharedMemory>
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
#include <QSharedMemory>
#endif
#endif

/*
QSharedMemory(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSharedMemory * o = new QSharedMemory ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSharedMemory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSharedMemory(const QString &key, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QSharedMemory * o = new QSharedMemory ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSharedMemory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QSharedMemory(QObject *parent = 0)
//[2]QSharedMemory(const QString &key, QObject *parent = 0)

HB_FUNC_STATIC( QSHAREDMEMORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSHAREDMEMORY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSHAREDMEMORY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSHAREDMEMORY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setKey(const QString &key)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SETKEY )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setKey ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString key() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_KEY )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->key (  ).toLatin1().data() );
  }
}


/*
void setNativeKey(const QString &key)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SETNATIVEKEY )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNativeKey ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString nativeKey() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NATIVEKEY )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->nativeKey (  ).toLatin1().data() );
  }
}


/*
bool create(int size, AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_CREATE )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QSharedMemory::ReadWrite : hb_parni(2);
    hb_retl( obj->create ( (int) hb_parni(1),  (QSharedMemory::AccessMode) par2 ) );
  }
}


/*
int size() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SIZE )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
bool attach(AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ATTACH )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QSharedMemory::ReadWrite : hb_parni(1);
    hb_retl( obj->attach (  (QSharedMemory::AccessMode) par1 ) );
  }
}


/*
bool isAttached() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ISATTACHED )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAttached (  ) );
  }
}


/*
bool detach()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_DETACH )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->detach (  ) );
  }
}


/*
void *data()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_DATA )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->data (  ) );
  }
}




/*
bool lock()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_LOCK )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->lock (  ) );
  }
}


/*
bool unlock()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_UNLOCK )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unlock (  ) );
  }
}


/*
SharedMemoryError error() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ERROR )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ERRORSTRING )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
