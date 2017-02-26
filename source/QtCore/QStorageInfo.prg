/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QStorageInfo

   DATA pointer
   DATA class_id INIT Class_Id_QStorageInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setPath
   METHOD rootPath
   METHOD device
   METHOD fileSystemType
   METHOD name
   METHOD displayName
   METHOD bytesTotal
   METHOD bytesFree
   METHOD bytesAvailable
   METHOD isRoot
   METHOD isReadOnly
   METHOD isReady
   METHOD isValid
   METHOD refresh
   METHOD mountedVolumes
   METHOD root
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStorageInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QStorageInfo>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QStorageInfo>
#endif
#endif

/*
QStorageInfo()
*/
HB_FUNC_STATIC( QSTORAGEINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * o = new QStorageInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStorageInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QStorageInfo(const QString &path)
*/
HB_FUNC_STATIC( QSTORAGEINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QStorageInfo * o = new QStorageInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStorageInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QStorageInfo(const QDir &dir)
*/
HB_FUNC_STATIC( QSTORAGEINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QDir * par1 = (QDir *) _qtxhb_itemGetPtr(1);
  QStorageInfo * o = new QStorageInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStorageInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QStorageInfo(const QStorageInfo &other)
*/
HB_FUNC_STATIC( QSTORAGEINFO_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * par1 = (QStorageInfo *) _qtxhb_itemGetPtr(1);
  QStorageInfo * o = new QStorageInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStorageInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QStorageInfo()
//[2]explicit QStorageInfo(const QString &path)
//[3]explicit QStorageInfo(const QDir &dir)
//[4]QStorageInfo(const QStorageInfo &other)

HB_FUNC_STATIC( QSTORAGEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTORAGEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSTORAGEINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    HB_FUNC_EXEC( QSTORAGEINFO_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSTORAGEINFO(1) )
  {
    HB_FUNC_EXEC( QSTORAGEINFO_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTORAGEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QStorageInfo &other)
*/
HB_FUNC_STATIC( QSTORAGEINFO_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStorageInfo * par1 = (QStorageInfo *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setPath(const QString &path)
*/
HB_FUNC_STATIC( QSTORAGEINFO_SETPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString rootPath() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ROOTPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->rootPath (  ).toLatin1().data() );
  }
#endif
}


/*
QByteArray device() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_DEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->device (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
QByteArray fileSystemType() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_FILESYSTEMTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fileSystemType (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
#endif
}


/*
QString displayName() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_DISPLAYNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->displayName (  ).toLatin1().data() );
  }
#endif
}


/*
qint64 bytesTotal() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_BYTESTOTAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesTotal (  ) );
  }
#endif
}


/*
qint64 bytesFree() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_BYTESFREE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesFree (  ) );
  }
#endif
}


/*
qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable (  ) );
  }
#endif
}


/*
bool isRoot() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISROOT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRoot (  ) );
  }
#endif
}


/*
bool isReadOnly() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISREADONLY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
#endif
}


/*
bool isReady() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISREADY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReady (  ) );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
void refresh()
*/
HB_FUNC_STATIC( QSTORAGEINFO_REFRESH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->refresh (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QList<QStorageInfo> mountedVolumes()
*/
HB_FUNC_STATIC( QSTORAGEINFO_MOUNTEDVOLUMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QList<QStorageInfo> list = QStorageInfo::mountedVolumes (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSTORAGEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QSTORAGEINFO" );
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
      hb_itemPutPtr( pItem, (QStorageInfo *) new QStorageInfo ( list[i] ) );
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
#endif
}


/*
static QStorageInfo root()
*/
HB_FUNC_STATIC( QSTORAGEINFO_ROOT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * ptr = new QStorageInfo( QStorageInfo::root (  ) );
  _qt4xhb_createReturnClass ( ptr, "QSTORAGEINFO", true );
#endif
}



HB_FUNC_STATIC( QSTORAGEINFO_NEWFROM )
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

HB_FUNC_STATIC( QSTORAGEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTORAGEINFO_NEWFROM );
}

HB_FUNC_STATIC( QSTORAGEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTORAGEINFO_NEWFROM );
}

HB_FUNC_STATIC( QSTORAGEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTORAGEINFO_SETSELFDESTRUCTION )
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