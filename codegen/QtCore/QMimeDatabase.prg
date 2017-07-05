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
HB_FUNC_STATIC( QMIMEDATABASE_NEW )
{
  QMimeDatabase * o = new QMimeDatabase ();
  _qt5xhb_storePointerAndFlag( o, true );
}

$deleteMethod

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
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile ( PQSTRING(1), (QMimeDatabase::MatchMode) par2 ) );
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
    int par2 = ISNIL(2)? (int) QMimeDatabase::MatchDefault : hb_parni(2);
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFile ( *PQFILEINFO(1), (QMimeDatabase::MatchMode) par2 ) );
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
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData ( *PQBYTEARRAY(1) ) );
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
    QMimeType * ptr = new QMimeType( obj->mimeTypeForData ( PQIODEVICE(1) ) );
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
      QMimeType * ptr = new QMimeType( obj->mimeTypeForUrl ( *PQURL(1) ) );
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
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData ( PQSTRING(1), PQIODEVICE(2) ) );
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
    QMimeType * ptr = new QMimeType( obj->mimeTypeForFileNameAndData ( PQSTRING(1), *PQBYTEARRAY(2) ) );
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
