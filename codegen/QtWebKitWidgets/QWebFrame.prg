$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QSIZE
REQUEST QWEBELEMENT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QRECT
REQUEST QWEBHITTESTRESULT
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QPOINT
REQUEST QWEBSECURITYORIGIN
REQUEST QVARIANT
#endif

CLASS QWebFrame INHERIT QObject

   DATA self_destruction INIT .F.

   //METHOD addToJavaScriptWindowObject
   METHOD baseUrl
   METHOD childFrames
   METHOD contentsSize
   METHOD documentElement
   METHOD findAllElements
   METHOD findFirstElement
   METHOD frameName
   METHOD geometry
   METHOD hasFocus
   METHOD hitTestContent
   METHOD icon
   METHOD load
   METHOD page
   METHOD parentFrame
   METHOD pos
   METHOD render
   METHOD requestedUrl
   METHOD scroll
   METHOD scrollBarGeometry
   METHOD scrollBarMaximum
   METHOD scrollBarMinimum
   METHOD scrollBarPolicy
   METHOD scrollBarValue
   METHOD scrollPosition
   METHOD scrollToAnchor
   METHOD securityOrigin
   METHOD setContent
   METHOD setFocus
   METHOD setHtml
   METHOD setScrollBarPolicy
   METHOD setScrollBarValue
   METHOD setScrollPosition
   METHOD setTextSizeMultiplier
   METHOD setUrl
   METHOD setZoomFactor
   METHOD textSizeMultiplier
   METHOD title
   METHOD toHtml
   METHOD toPlainText
   METHOD url
   METHOD zoomFactor
   METHOD evaluateJavaScript
   METHOD print

   METHOD onContentsSizeChanged
   METHOD onIconChanged
   METHOD onInitialLayoutCompleted
   METHOD onJavaScriptWindowObjectCleared
   METHOD onLoadFinished
   METHOD onLoadStarted
   METHOD onPageChanged
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QWebElement>
#include <QWebSecurityOrigin>

%//[1]void addToJavaScriptWindowObject ( const QString & name, QObject * object )
%//[2]void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )

%// TODO: implementar

%HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT )
%{
%//   if( ISNUMPAR(2) && ISCHAR(1) && ISOBJECT(2) )
%//   {
%//     HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT1 );
%//   }
%//   else if( ISNUMPAR(3) && ISCHAR(1) && ISOBJECT(2) && ISNUM(3) )
%//   {
%//     HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT2 );
%//   }
%}

/*
QUrl baseUrl () const
*/
$method=|QUrl|baseUrl|

/*
QList<QWebFrame *> childFrames () const
*/
HB_FUNC_STATIC( QWEBFRAME_CHILDFRAMES )
{
  QWebFrame * obj = (QWebFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebFrame *> list = obj->childFrames ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBFRAME" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBFRAME" );
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
        hb_itemPutPtr( pItem, (QWebFrame *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QSize contentsSize () const
*/
$method=|QSize|contentsSize|

/*
QWebElement documentElement () const
*/
$method=|QWebElement|documentElement|

/*
QWebElementCollection findAllElements ( const QString & selectorQuery ) const
*/
$method=|QWebElementCollection|findAllElements|const QString &

/*
QWebElement findFirstElement ( const QString & selectorQuery ) const
*/
$method=|QWebElement|findFirstElement|const QString &

/*
QString frameName () const
*/
$method=|QString|frameName|

/*
QRect geometry () const
*/
$method=|QRect|geometry|

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
QWebHitTestResult hitTestContent ( const QPoint & pos ) const
*/
$method=|QWebHitTestResult|hitTestContent|const QPoint &

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
void load ( const QUrl & url )
*/
$internalMethod=|void|load,load1|const QUrl &

/*
void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC_STATIC( QWEBFRAME_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QWebFrame_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QWebFrame_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebPage * page () const
*/
$method=|QWebPage *|page|

/*
QWebFrame * parentFrame () const
*/
$method=|QWebFrame *|parentFrame|

/*
QPoint pos () const
*/
$method=|QPoint|pos|

/*
void render ( QPainter * painter )
*/
$internalMethod=|void|render,render1|QPainter *

/*
void render ( QPainter * painter, const QRegion & clip )
*/
$internalMethod=|void|render,render2|QPainter *,const QRegion &

/*
void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )
*/
$internalMethod=|void|render,render3|QPainter *,QWebFrame::RenderLayer,const QRegion &=QRegion()

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRegion & clip )
//[3]void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )

HB_FUNC_STATIC( QWEBFRAME_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QWebFrame_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQREGION(2) )
  {
    QWebFrame_render2();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISNUM(2) && (ISQREGION(3)||ISNIL(3)) )
  {
    QWebFrame_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl requestedUrl () const
*/
$method=|QUrl|requestedUrl|

/*
void scroll ( int dx, int dy )
*/
$method=|void|scroll|int,int

/*
QRect scrollBarGeometry ( Qt::Orientation orientation ) const
*/
$method=|QRect|scrollBarGeometry|Qt::Orientation

/*
int scrollBarMaximum ( Qt::Orientation orientation ) const
*/
$method=|int|scrollBarMaximum|Qt::Orientation

/*
int scrollBarMinimum ( Qt::Orientation orientation ) const
*/
$method=|int|scrollBarMinimum|Qt::Orientation

/*
Qt::ScrollBarPolicy scrollBarPolicy ( Qt::Orientation orientation ) const
*/
$method=|Qt::ScrollBarPolicy|scrollBarPolicy|Qt::Orientation

/*
int scrollBarValue ( Qt::Orientation orientation ) const
*/
$method=|int|scrollBarValue|Qt::Orientation

/*
QPoint scrollPosition () const
*/
$method=|QPoint|scrollPosition|

/*
void scrollToAnchor ( const QString & anchor )
*/
$method=|void|scrollToAnchor|const QString &

/*
QWebSecurityOrigin securityOrigin () const
*/
$method=|QWebSecurityOrigin|securityOrigin|

/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

/*
void setFocus ()
*/
$method=|void|setFocus|

/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

/*
void setScrollBarPolicy ( Qt::Orientation orientation, Qt::ScrollBarPolicy policy )
*/
$method=|void|setScrollBarPolicy|Qt::Orientation,Qt::ScrollBarPolicy

/*
void setScrollBarValue ( Qt::Orientation orientation, int value )
*/
$method=|void|setScrollBarValue|Qt::Orientation,int

/*
void setScrollPosition ( const QPoint & pos )
*/
$method=|void|setScrollPosition|const QPoint &

/*
void setTextSizeMultiplier ( qreal factor )
*/
$method=|void|setTextSizeMultiplier|qreal

/*
void setUrl ( const QUrl & url )
*/
$method=|void|setUrl|const QUrl &

/*
void setZoomFactor ( qreal factor )
*/
$method=|void|setZoomFactor|qreal

/*
qreal textSizeMultiplier () const
*/
$method=|qreal|textSizeMultiplier|

/*
QString title () const
*/
$method=|QString|title|

/*
QString toHtml () const
*/
$method=|QString|toHtml|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
QUrl url () const
*/
$method=|QUrl|url|

/*
qreal zoomFactor () const
*/
$method=|qreal|zoomFactor|

/*
QVariant evaluateJavaScript ( const QString & scriptSource )
*/
$method=|QVariant|evaluateJavaScript|const QString &

/*
void print ( QPrinter * printer ) const
*/
$method=|void|print|QPrinter *

#pragma ENDDUMP
