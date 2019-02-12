%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKit/QWebElement>
#include <QtWebKitWidgets/QWebPage>
#include <QtWebKit/QWebSecurityOrigin>

$prototype=QWebFrame(QWebPage *parentPage) PRIVATE

$prototype=QWebFrame(QWebFrame* parent, QWebFrameData*) PRIVATE

$prototype=~QWebFrame() PRIVATE

%%
%% Q_PROPERTY(qreal textSizeMultiplier READ textSizeMultiplier WRITE setTextSizeMultiplier DESIGNABLE false)
%%

$prototype=qreal textSizeMultiplier () const
$method=|qreal|textSizeMultiplier|

$prototype=void setTextSizeMultiplier ( qreal factor )
$method=|void|setTextSizeMultiplier|qreal

%%
%% Q_PROPERTY(qreal zoomFactor READ zoomFactor WRITE setZoomFactor)
%%

$prototype=qreal zoomFactor () const
$method=|qreal|zoomFactor|

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

%%
%% Q_PROPERTY(QString title READ title)
%%

$prototype=QString title () const
$method=|QString|title|

%%
%% Q_PROPERTY(QUrl url READ url WRITE setUrl)
%%

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

%%
%% Q_PROPERTY(QUrl requestedUrl READ requestedUrl)
%%

$prototype=QUrl requestedUrl () const
$method=|QUrl|requestedUrl|

%%
%% Q_PROPERTY(QUrl baseUrl READ baseUrl)
%%

$prototype=QUrl baseUrl () const
$method=|QUrl|baseUrl|

%%
%% Q_PROPERTY(QIcon icon READ icon)
%%

$prototype=QIcon icon () const
$method=|QIcon|icon|

%%
%% Q_PROPERTY(QSize contentsSize READ contentsSize)
%%

$prototype=QSize contentsSize () const
$method=|QSize|contentsSize|

%%
%% Q_PROPERTY(QPoint scrollPosition READ scrollPosition WRITE setScrollPosition)
%%

$prototype=QPoint scrollPosition () const
$method=|QPoint|scrollPosition|

$prototype=void setScrollPosition ( const QPoint & pos )
$method=|void|setScrollPosition|const QPoint &

%%
%% Q_PROPERTY(bool focus READ hasFocus)
%%

$prototype=bool hasFocus () const
$method=|bool|hasFocus|

%%
%%
%%

%%//[1]void addToJavaScriptWindowObject ( const QString & name, QObject * object )
%%//[2]void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )

%%// TODO: implementar

%%HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT )
%%{
%%//   if( ISNUMPAR(2) && ISCHAR(1) && ISOBJECT(2) )
%%//   {
%%//     HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT1 );
%%//   }
%%//   else if( ISNUMPAR(3) && ISCHAR(1) && ISOBJECT(2) && ISNUM(3) )
%%//   {
%%//     HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT2 );
%%//   }
%%}

$prototype=void addToJavaScriptWindowObject(const QString &name, QObject *object, ValueOwnership ownership = QtOwnership)
$method=|void|addToJavaScriptWindowObject|const QString &,QObject *,QWebFrame::ValueOwnership=QWebFrame::QtOwnership

$prototype=QList<QWebFrame *> childFrames () const
$method=|QList<QWebFrame *>|childFrames|

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

$prototype=QWebHitTestResult hitTestContent ( const QPoint & pos ) const
$method=|QWebHitTestResult|hitTestContent|const QPoint &

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

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
$addMethod=load

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=QWebFrame * parentFrame () const
$method=|QWebFrame *|parentFrame|

$prototype=QPoint pos () const
$method=|QPoint|pos|

$prototype=void render(QPainter*, const QRegion& clip = QRegion())
$internalMethod=|void|render,render1|QPainter *,const QRegion &=QRegion()

$prototype=void render(QPainter*, RenderLayers layer, const QRegion& clip = QRegion())
$internalMethod=|void|render,render2|QPainter *,QWebFrame::RenderLayers,const QRegion &=QRegion()

//[1]void render(QPainter*, const QRegion& clip = QRegion())
//[2]void render(QPainter*, RenderLayers layer, const QRegion& clip = QRegion())

HB_FUNC_STATIC( QWEBFRAME_RENDER )
{
  if( ISBETWEEN(1,2) && ISQPAINTER(1) && (ISQREGION(2)||ISNIL(2)) )
  {
    QWebFrame_render1();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISNUM(2) && (ISQREGION(3)||ISNIL(3)) )
  {
    QWebFrame_render2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=render

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

$prototype=QString toHtml () const
$method=|QString|toHtml|

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=QVariant evaluateJavaScript ( const QString & scriptSource )
$slotMethod=|QVariant|evaluateJavaScript|const QString &

$prototype=void print ( QPrinter * printer ) const
$slotMethod=|void|print|QPrinter *|#ifndef QT_NO_PRINTER

%% TODO: implementar
$prototype=QMultiMap<QString, QString> metaData() const

$prototype=virtual bool event(QEvent *)
$virtualMethod=|bool|event|QEvent *

$prototype=QWebFrameAdapter* handle() const

$beginSignals
$signal=|contentsSizeChanged(QSize)
$signal=|iconChanged()
$signal=|initialLayoutCompleted()
$signal=|javaScriptWindowObjectCleared()
$signal=|loadFinished(bool)
$signal=|loadStarted()
$signal=|pageChanged()
%% $signal=|provisionalLoad()
$signal=|titleChanged(QString)
$signal=|urlChanged(QUrl)
$endSignals

#pragma ENDDUMP
