$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMETYPE
#endif

CLASS QMimeDatabase

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

/*
QMimeDatabase()
*/
$constructor=|new|

$deleteMethod

/*
QMimeType mimeTypeForName(const QString &nameOrAlias) const
*/
$method=|QMimeType|mimeTypeForName|const QString &

/*
QMimeType mimeTypeForFile(const QString &fileName, MatchMode mode = MatchDefault) const
*/
$internalMethod=|QMimeType|mimeTypeForFile,mimeTypeForFile1|const QString &,QMimeDatabase::MatchMode=QMimeDatabase::MatchDefault

/*
QMimeType mimeTypeForFile(const QFileInfo &fileInfo, MatchMode mode = MatchDefault) const
*/
$internalMethod=|QMimeType|mimeTypeForFile,mimeTypeForFile2|const QFileInfo &,QMimeDatabase::MatchMode=QMimeDatabase::MatchDefault

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
$internalMethod=|QMimeType|mimeTypeForData,mimeTypeForData1|const QByteArray &

/*
QMimeType mimeTypeForData(QIODevice *device) const
*/
$internalMethod=|QMimeType|mimeTypeForData,mimeTypeForData2|QIODevice *

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
$method=|QMimeType|mimeTypeForUrl|const QUrl &

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, QIODevice *device) const
*/
$internalMethod=|QMimeType|mimeTypeForFileNameAndData,mimeTypeForFileNameAndData1|const QString &,QIODevice *

/*
QMimeType mimeTypeForFileNameAndData(const QString &fileName, const QByteArray &data) const
*/
$internalMethod=|QMimeType|mimeTypeForFileNameAndData,mimeTypeForFileNameAndData2|const QString &,const QByteArray &

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
$method=|QString|suffixForFileName|const QString &

/*
QList<QMimeType> allMimeTypes() const
*/
HB_FUNC_STATIC( QMIMEDATABASE_ALLMIMETYPES )
{
  QMimeDatabase * obj = (QMimeDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QMimeType> list = obj->allMimeTypes ();
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

$extraMethods

#pragma ENDDUMP
