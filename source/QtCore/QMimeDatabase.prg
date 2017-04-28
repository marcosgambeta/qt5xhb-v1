/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMETYPE
#endif

CLASS QMimeDatabase

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mimeTypeForName
   METHOD mimeTypeForFile
   METHOD mimeTypesForFileName
   METHOD mimeTypeForData
   METHOD mimeTypeForUrl
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
#include <QMimeDatabase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMimeDatabase>
#endif

/*
QMimeDatabase()
*/
HB_FUNC_STATIC( QMIMEDATABASE_NEW )
{
  QMimeDatabase * o = new QMimeDatabase (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

HB_FUNC_STATIC( QMIMEDATABASE_DELETE )
{
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
}

/*
QMimeType mimeTypeForName(const QString &nameOrAlias) const
*/
HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORNAME )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QMimeType * ptr = new QMimeType( obj->mimeTypeForName ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
*/
void QMimeDatabase_mimeTypeForFile1 ()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) QMimeDatabase::MatchDefault : hb_parni(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile ( PQSTRING(1),  (QMimeDatabase::MatchMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const
*/
void QMimeDatabase_mimeTypeForFile2 ()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QMimeDatabase::MatchDefault : hb_parni(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile ( *par1,  (QMimeDatabase::MatchMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

//[1]QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
//[2]QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QMimeDatabase_mimeTypeForFile1();
  }
  else if( ISBETWEEN(1,2) && ISQFILEINFO(1) && ISOPTNUM(2) )
  {
    QMimeDatabase_mimeTypeForFile2();
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
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QList<QMimeType> list = obj->mimeTypesForFileName ( PQSTRING(1) );
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMimeType mimeTypeForData(const QByteArray &data) const
*/
void QMimeDatabase_mimeTypeForData1 ()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForData(QIODevice *device) const
*/
void QMimeDatabase_mimeTypeForData2 ()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

//[1]QMimeType mimeTypeForData(const QByteArray &data) const
//[2]QMimeType mimeTypeForData(QIODevice *device) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QMimeDatabase_mimeTypeForData1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QMimeDatabase_mimeTypeForData2();
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
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
      QMimeType * ptr = new QMimeType( obj->mimeTypeForUrl ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
*/
void QMimeDatabase_mimeTypeForFileNameAndData1 ()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * par2 = (QIODevice *) _qt5xhb_itemGetPtr(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData ( PQSTRING(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const
*/
void QMimeDatabase_mimeTypeForFileNameAndData2 ()
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData ( PQSTRING(1), *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QMIMETYPE", true );
  }
}

//[1]QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
//[2]QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const

HB_FUNC_STATIC( QMIMEDATABASE_MIMETYPEFORFILENAMEANDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    QMimeDatabase_mimeTypeForFileNameAndData1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    QMimeDatabase_mimeTypeForFileNameAndData2();
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
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retc( (const char *) obj->suffixForFileName ( PQSTRING(1) ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QMimeType> allMimeTypes() const
*/
HB_FUNC_STATIC( QMIMEDATABASE_ALLMIMETYPES )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

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
