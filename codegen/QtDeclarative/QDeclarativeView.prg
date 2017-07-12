$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QSIZE
REQUEST QDECLARATIVECONTEXT
REQUEST QGRAPHICSOBJECT
REQUEST QURL
#endif

CLASS QDeclarativeView INHERIT QGraphicsView

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD errors
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD setSource
   METHOD source
   METHOD status

   METHOD onSceneResized
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QDeclarativeError>

/*
QDeclarativeView ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QUrl &,QWidget *=0

//[1]QDeclarativeView ( QWidget * parent = 0 )
//[2]QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDeclarativeEngine * engine () const
*/
$method=|QDeclarativeEngine *|engine|

/*
QList<QDeclarativeError> errors () const
*/
HB_FUNC_STATIC( QDECLARATIVEVIEW_ERRORS )
{
  QDeclarativeView * obj = (QDeclarativeView *) _qt5xhb_itemGetPtrStackSelfItem();

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
QSize initialSize () const
*/
$method=|QSize|initialSize|

/*
ResizeMode resizeMode () const
*/
$method=|QDeclarativeView::ResizeMode|resizeMode|

/*
QDeclarativeContext * rootContext () const
*/
$method=|QDeclarativeContext *|rootContext|

/*
QGraphicsObject * rootObject () const
*/
$method=|QGraphicsObject *|rootObject|

/*
void setResizeMode ( ResizeMode )
*/
$method=|void|setResizeMode|QDeclarativeView::ResizeMode

/*
void setSource ( const QUrl & url )
*/
$method=|void|setSource|const QUrl &

/*
QUrl source () const
*/
$method=|QUrl|source|

/*
Status status () const
*/
$method=|QDeclarativeView::Status|status|

#pragma ENDDUMP
