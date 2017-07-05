$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QStorageInfo

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QStorageInfo()
*/
void QStorageInfo_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * o = new QStorageInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
explicit QStorageInfo(const QString &path)
*/
void QStorageInfo_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * o = new QStorageInfo ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
explicit QStorageInfo(const QDir &dir)
*/
void QStorageInfo_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * o = new QStorageInfo ( *PQDIR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QStorageInfo(const QStorageInfo &other)
*/
void QStorageInfo_new4 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * o = new QStorageInfo ( *PQSTORAGEINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
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
    QStorageInfo_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStorageInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QStorageInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSTORAGEINFO(1) )
  {
    QStorageInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
void swap(QStorageInfo &other)
*/
HB_FUNC_STATIC( QSTORAGEINFO_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSTORAGEINFO(1) )
    {
      QStorageInfo * par1 = (QStorageInfo *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
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
void setPath(const QString &path)
*/
$method=5,4,0|void|setPath|const QString &

/*
QString rootPath() const
*/
$method=5,4,0|QString|rootPath|

/*
QByteArray device() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_DEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->device () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}

/*
QByteArray fileSystemType() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_FILESYSTEMTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStorageInfo * obj = (QStorageInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fileSystemType () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}

/*
QString name() const
*/
$method=5,4,0|QString|name|

/*
QString displayName() const
*/
$method=5,4,0|QString|displayName|

/*
qint64 bytesTotal() const
*/
$method=5,4,0|qint64|bytesTotal|

/*
qint64 bytesFree() const
*/
$method=5,4,0|qint64|bytesFree|

/*
qint64 bytesAvailable() const
*/
$method=5,4,0|qint64|bytesAvailable|

/*
bool isRoot() const
*/
$method=5,4,0|bool|isRoot|

/*
bool isReadOnly() const
*/
$method=5,4,0|bool|isReadOnly|

/*
bool isReady() const
*/
$method=5,4,0|bool|isReady|

/*
bool isValid() const
*/
$method=5,4,0|bool|isValid|

/*
void refresh()
*/
$method=5,4,0|void|refresh|

/*
static QList<QStorageInfo> mountedVolumes()
*/
HB_FUNC_STATIC( QSTORAGEINFO_MOUNTEDVOLUMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QList<QStorageInfo> list = QStorageInfo::mountedVolumes ();
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
  QStorageInfo * ptr = new QStorageInfo( QStorageInfo::root () );
  _qt5xhb_createReturnClass ( ptr, "QSTORAGEINFO", true );
#endif
}

$extraMethods

#pragma ENDDUMP
