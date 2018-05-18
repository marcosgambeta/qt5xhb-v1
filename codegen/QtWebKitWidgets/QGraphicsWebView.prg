%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

%% TODO: implementar condicao #if !defined(QT_NO_GRAPHICSVIEW)

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QICON
REQUEST QURL
REQUEST QWEBHISTORY
REQUEST QWEBPAGE
REQUEST QWEBSETTINGS
#endif

$beginClassFrom=QGraphicsWidget

   METHOD new
   METHOD delete

   METHOD back
   METHOD event
   METHOD findText
   METHOD forward
   METHOD history
   METHOD icon
   METHOD inputMethodQuery
   METHOD isModified
   METHOD isTiledBackingStoreFrozen
   METHOD itemChange
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD paint
   METHOD reload
   METHOD renderHints
   METHOD resizesToContents
   METHOD setContent
   METHOD setGeometry
   METHOD setHtml
   METHOD setPage
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setResizesToContents
   METHOD setTiledBackingStoreFrozen
   METHOD settings
   METHOD setUrl
   METHOD setZoomFactor
   METHOD sizeHint
   METHOD stop
   METHOD title
   METHOD triggerPageAction
   METHOD updateGeometry
   METHOD url
   METHOD zoomFactor

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$prototype=explicit QGraphicsWebView ( QGraphicsItem * parent = 0 )
$constructor=|new|QGraphicsItem *=0

$prototype=~QGraphicsWebView()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title NOTIFY titleChanged)
%%

$prototype=QString title () const
$method=|QString|title|

%%
%% Q_PROPERTY(QIcon icon READ icon NOTIFY iconChanged)
%%

$prototype=QIcon icon () const
$method=|QIcon|icon|

%%
%% Q_PROPERTY(qreal zoomFactor READ zoomFactor WRITE setZoomFactor)
%%

$prototype=qreal zoomFactor () const
$method=|qreal|zoomFactor|

$prototype=void setZoomFactor ( qreal )
$method=|void|setZoomFactor|qreal

%%
%% Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)
%%

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=void setUrl ( const QUrl & )
$method=|void|setUrl|const QUrl &

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototype=bool isModified () const
$method=|bool|isModified|

%%
%% Q_PROPERTY(bool resizesToContents READ resizesToContents WRITE setResizesToContents)
%%

$prototype=bool resizesToContents () const
$method=|bool|resizesToContents|

$prototype=void setResizesToContents ( bool enabled )
$method=|void|setResizesToContents|bool

%%
%% Q_PROPERTY(bool tiledBackingStoreFrozen READ isTiledBackingStoreFrozen WRITE setTiledBackingStoreFrozen)
%%

$prototype=bool isTiledBackingStoreFrozen () const
$method=|bool|isTiledBackingStoreFrozen|

$prototype=void setTiledBackingStoreFrozen ( bool frozen )
$method=|void|setTiledBackingStoreFrozen|bool

%%
%% Q_PROPERTY(QPainter::RenderHints renderHints READ renderHints WRITE setRenderHints)
%%

$prototype=QPainter::RenderHints renderHints() const
$method=|QPainter::RenderHints|renderHints|

$prototype=void setRenderHints(QPainter::RenderHints)
$method=|void|setRenderHints|QPainter::RenderHints

%%
%%
%%

$prototype=bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QGraphicsWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QGraphicsWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=QAction * pageAction ( QWebPage::WebAction action ) const
$method=|QAction *|pageAction|QWebPage::WebAction

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

$prototype=void back ()
$slotMethod=|void|back|

$prototype=void forward ()
$slotMethod=|void|forward|

$prototype=void reload ()
$slotMethod=|void|reload|

$prototype=void stop ()
$slotMethod=|void|stop|

$prototype=virtual void setGeometry(const QRectF& rect)
$virtualMethod=|void|setGeometry|const QRectF &

$prototype=virtual void updateGeometry()
$virtualMethod=|void|updateGeometry|

$prototype=virtual void paint(QPainter*, const QStyleOptionGraphicsItem* options, QWidget* widget = 0)
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=virtual QVariant itemChange(GraphicsItemChange change, const QVariant& value)
$virtualMethod=|QVariant|itemChange|QGraphicsItem::GraphicsItemChange,const QVariant &

$prototype=virtual bool event(QEvent*)
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const
$virtualMethod=|QSizeF|sizeHint|Qt::SizeHint,const QSizeF &

$prototype=virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void setRenderHint(QPainter::RenderHint, bool enabled = true)
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$beginSignals
$signal=|iconChanged()
$signal=|linkClicked(QUrl)
$signal=|loadFinished(bool)
$signal=|loadProgress(int)
$signal=|loadStarted()
$signal=|statusBarMessage(QString)
$signal=|titleChanged(QString)
$signal=|urlChanged(QUrl)
$endSignals

#pragma ENDDUMP
