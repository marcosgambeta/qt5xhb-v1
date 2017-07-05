$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QPluginLoader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD errorString
   METHOD fileName
   METHOD instance
   METHOD isLoaded
   METHOD load
   METHOD loadHints
   METHOD setFileName
   METHOD setLoadHints
   METHOD unload
   METHOD staticInstances

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPluginLoader ( QObject * parent = 0 )
*/
void QPluginLoader_new1 ()
{
  QPluginLoader * o = new QPluginLoader ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/
void QPluginLoader_new2 ()
{
  QPluginLoader * o = new QPluginLoader ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QPluginLoader ( QObject * parent = 0 )
//[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QObject * instance ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_INSTANCE )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->instance ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
bool isLoaded () const
*/
$method=|bool|isLoaded|

/*
bool load ()
*/
$method=|bool|load|

/*
QLibrary::LoadHints loadHints () const
*/
$method=|QLibrary::LoadHints|loadHints|

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setLoadHints ( QLibrary::LoadHints loadHints )
*/
$method=|void|setLoadHints|QLibrary::LoadHints

/*
bool unload ()
*/
$method=|bool|unload|

/*
QObjectList staticInstances ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_STATICINSTANCES )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObjectList list = obj->staticInstances ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
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
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP
