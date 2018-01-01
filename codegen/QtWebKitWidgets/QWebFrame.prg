%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QUrl baseUrl () const
$method=|QUrl|baseUrl|

$prototype=QList<QWebFrame *> childFrames () const
$method=|QList<QWebFrame *>|childFrames|

$prototype=QSize contentsSize () const
$method=|QSize|contentsSize|

$prototype=QWebElement documentElement () const
$method=|QWebElement|documentElement|

$prototype=QWebElementCollection findAllElements ( const QString & selectorQuery ) const
$method=|QWebElementCollection|findAllElements|const QString &

$prototype=QWebElement findFirstElement ( const QString & selectorQuery ) const
$method=|QWebElement|findFirstElement|const QString &

$prototype=QString frameName () const
$method=|QString|frameName|

$prototype=QRect geometry () const
$method=|QRect|geometry|

$prototype=bool hasFocus () const
$method=|bool|hasFocus|

$prototype=QWebHitTestResult hitTestContent ( const QPoint & pos ) const
$method=|QWebHitTestResult|hitTestContent|const QPoint &

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
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

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=QWebFrame * parentFrame () const
$method=|QWebFrame *|parentFrame|

$prototype=QPoint pos () const
$method=|QPoint|pos|

$prototype=void render ( QPainter * painter )
$internalMethod=|void|render,render1|QPainter *

$prototype=void render ( QPainter * painter, const QRegion & clip )
$internalMethod=|void|render,render2|QPainter *,const QRegion &

$prototype=void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )
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

$prototype=QUrl requestedUrl () const
$method=|QUrl|requestedUrl|

$prototype=void scroll ( int dx, int dy )
$method=|void|scroll|int,int

$prototype=QRect scrollBarGeometry ( Qt::Orientation orientation ) const
$method=|QRect|scrollBarGeometry|Qt::Orientation

$prototype=int scrollBarMaximum ( Qt::Orientation orientation ) const
$method=|int|scrollBarMaximum|Qt::Orientation

$prototype=int scrollBarMinimum ( Qt::Orientation orientation ) const
$method=|int|scrollBarMinimum|Qt::Orientation

$prototype=Qt::ScrollBarPolicy scrollBarPolicy ( Qt::Orientation orientation ) const
$method=|Qt::ScrollBarPolicy|scrollBarPolicy|Qt::Orientation

$prototype=int scrollBarValue ( Qt::Orientation orientation ) const
$method=|int|scrollBarValue|Qt::Orientation

$prototype=QPoint scrollPosition () const
$method=|QPoint|scrollPosition|

$prototype=void scrollToAnchor ( const QString & anchor )
$method=|void|scrollToAnchor|const QString &

$prototype=QWebSecurityOrigin securityOrigin () const
$method=|QWebSecurityOrigin|securityOrigin|

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setFocus ()
$method=|void|setFocus|

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setScrollBarPolicy ( Qt::Orientation orientation, Qt::ScrollBarPolicy policy )
$method=|void|setScrollBarPolicy|Qt::Orientation,Qt::ScrollBarPolicy

$prototype=void setScrollBarValue ( Qt::Orientation orientation, int value )
$method=|void|setScrollBarValue|Qt::Orientation,int

$prototype=void setScrollPosition ( const QPoint & pos )
$method=|void|setScrollPosition|const QPoint &

$prototype=void setTextSizeMultiplier ( qreal factor )
$method=|void|setTextSizeMultiplier|qreal

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

$prototype=qreal textSizeMultiplier () const
$method=|qreal|textSizeMultiplier|

$prototype=QString title () const
$method=|QString|title|

$prototype=QString toHtml () const
$method=|QString|toHtml|

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=qreal zoomFactor () const
$method=|qreal|zoomFactor|

$prototype=QVariant evaluateJavaScript ( const QString & scriptSource )
$method=|QVariant|evaluateJavaScript|const QString &

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

#pragma ENDDUMP
