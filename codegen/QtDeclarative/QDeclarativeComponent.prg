$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEERROR
REQUEST QURL
#endif

CLASS QDeclarativeComponent INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create
   METHOD creationContext
   METHOD errors
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD loadUrl
   METHOD progress
   METHOD setData
   METHOD status
   METHOD url

   METHOD onProgressChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = 0 )
*/
$internalConstructor=|new1|QDeclarativeEngine *,QObject *=0

/*
QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = 0 )
*/
$internalConstructor=|new2|QDeclarativeEngine *,const QString &,QObject *=0

/*
QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = 0 )
*/
$internalConstructor=|new3|QDeclarativeEngine *,const QUrl &,QObject *=0

//[1]QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = 0 )
//[3]QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QDeclarativeComponent_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    QDeclarativeComponent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual QObject * beginCreate ( QDeclarativeContext * context )
*/
$method=|QObject *|beginCreate|QDeclarativeContext *

/*
virtual void completeCreate ()
*/
$method=|void|completeCreate|

/*
virtual QObject * create ( QDeclarativeContext * context = 0 )
*/
$method=|QObject *|create|QDeclarativeContext *=0

/*
QDeclarativeContext * creationContext () const
*/
$method=|QDeclarativeContext *|creationContext|

/*
QList<QDeclarativeError> errors () const
*/
HB_FUNC_STATIC( QDECLARATIVECOMPONENT_ERRORS )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QDeclarativeError> list = obj->errors ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDECLARATIVEERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
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
        hb_itemPutPtr( pItem, (QDeclarativeError *) new QDeclarativeError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool isError () const
*/
$method=|bool|isError|

/*
bool isLoading () const
*/
$method=|bool|isLoading|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isReady () const
*/
$method=|bool|isReady|

/*
void loadUrl ( const QUrl & url )
*/
$method=|void|loadUrl|const QUrl &

/*
qreal progress () const
*/
$method=|qreal|progress|

/*
void setData ( const QByteArray & data, const QUrl & url )
*/
$method=|void|setData|const QByteArray &,const QUrl &

/*
Status status () const
*/
$method=|QDeclarativeComponent::Status|status|

/*
QUrl url () const
*/
$method=|QUrl|url|

#pragma ENDDUMP
