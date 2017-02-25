/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMIMETYPE
#endif

CLASS QMimeDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QMimeDatabase
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD mimeTypeForName
   METHOD mimeTypeForFile1
   METHOD mimeTypeForFile2
   METHOD mimeTypeForFile
   METHOD mimeTypesForFileName
   METHOD mimeTypeForData1
   METHOD mimeTypeForData2
   METHOD mimeTypeForData
   METHOD mimeTypeForUrl
   METHOD mimeTypeForFileNameAndData1
   METHOD mimeTypeForFileNameAndData2
   METHOD mimeTypeForFileNameAndData
   METHOD suffixForFileName
   METHOD allMimeTypes
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMimeDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMimeDatabase>
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
#include <QMimeDatabase>
#endif
#endif

/*
QMimeDatabase()
*/
HB_FUNC_STATIC( QMIMEDATABASE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMimeDatabase * o = new QMimeDatabase (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMimeDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMIMEDATABASE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMimeDatabase * obj = (QMimeDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMimeType mimeTypeForName(const QString &nameOrAlias) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORNAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QMimeType * ptr = new QMimeType( obj->mimeTypeForName ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}


/*
QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE1 )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QMimeDatabase::MatchDefault : hb_parni(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile ( par1,  (QMimeDatabase::MatchMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE2 )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QMimeDatabase::MatchDefault : hb_parni(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile ( *par1,  (QMimeDatabase::MatchMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}


//[1]QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
//[2]QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMIMEDATABASE_MIMETYPEFORFILE1 );
  }
  else if( ISBETWEEN(1,2) && ISQFILEINFO(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMIMEDATABASE_MIMETYPEFORFILE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QMimeType> mimeTypesForFileName(const QString &fileName) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPESFORFILENAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QList<QMimeType> list = obj->mimeTypesForFileName ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMIMETYPE" );
    #else
    pDynSym = hb_dynsymFindName( "QMIMETYPE" );
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
        hb_itemPutPtr( pItem, (QMimeType *) new QMimeType ( list[i] ) );
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
QMimeType mimeTypeForData(const QByteArray &data) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA1 )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForData(QIODevice *device) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA2 )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}


//[1]QMimeType mimeTypeForData(const QByteArray &data) const
//[2]QMimeType mimeTypeForData(QIODevice *device) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QMIMEDATABASE_MIMETYPEFORDATA1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QMIMEDATABASE_MIMETYPEFORDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMimeType mimeTypeForUrl(const QUrl &url) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORURL )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForUrl ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}


/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA1 )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QIODevice * par2 = (QIODevice *) _qtxhb_itemGetPtr(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA2 )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData ( par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}


//[1]QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
//[2]QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString suffixForFileName(const QString &fileName) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_SUFFIXFORFILENAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->suffixForFileName ( par1 ).toLatin1().data() );
  }
}


/*
QList<QMimeType> allMimeTypes() const
*/
HB_FUNC_STATIC( QMIMEDATABASE_ALLMIMETYPES )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QMimeType> list = obj->allMimeTypes (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMIMETYPE" );
    #else
    pDynSym = hb_dynsymFindName( "QMIMETYPE" );
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
        hb_itemPutPtr( pItem, (QMimeType *) new QMimeType ( list[i] ) );
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



HB_FUNC_STATIC( QMIMEDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMIMEDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QMIMEDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMIMEDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QMIMEDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMIMEDATABASE_SETSELFDESTRUCTION )
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