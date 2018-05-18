%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$beginClassFrom=QWidget

   METHOD new
   METHOD delete

   METHOD back
   METHOD event
   METHOD findText
   METHOD forward
   METHOD hasSelection
   METHOD history
   METHOD icon
   METHOD inputMethodQuery
   METHOD isModified
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD print
   METHOD reload
   METHOD renderHints
   METHOD selectedHtml
   METHOD selectedText
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTextSizeMultiplier
   METHOD settings
   METHOD setUrl
   METHOD setZoomFactor
   METHOD sizeHint
   METHOD stop
   METHOD textSizeMultiplier
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onSelectionChanged
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>
#include <QUrl>
#include <QWidget>

$prototype=explicit QWebView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototype=virtual ~QWebView()
$deleteMethod

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
%% Q_PROPERTY(QIcon icon READ icon)
%%

$prototype=QIcon icon () const
$method=|QIcon|icon|

%%
%% Q_PROPERTY(QString selectedText READ selectedText)
%%

$prototype=QString selectedText () const
$method=|QString|selectedText|

%%
%% Q_PROPERTY(QString selectedHtml READ selectedHtml)
%%

$prototype=QString selectedHtml() const
$method=|QString|selectedHtml|

%%
%% Q_PROPERTY(bool hasSelection READ hasSelection)
%%

$prototype=bool hasSelection() const
$method=|bool|hasSelection|

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototype=bool isModified () const
$method=|bool|isModified|

%%
%% //Q_PROPERTY(Qt::TextInteractionFlags textInteractionFlags READ textInteractionFlags WRITE setTextInteractionFlags)
%%

%% /*
%% Qt::TextInteractionFlags textInteractionFlags() const
%% void setTextInteractionFlags(Qt::TextInteractionFlags flags)
%% void setTextInteractionFlag(Qt::TextInteractionFlag flag)
%% */

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
%% Q_PROPERTY(QPainter::RenderHints renderHints READ renderHints WRITE setRenderHints)
%%

$prototype=QPainter::RenderHints renderHints () const
$method=|QPainter::RenderHints|renderHints|

$prototype=void setRenderHints ( QPainter::RenderHints hints )
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

HB_FUNC_STATIC( QWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=QAction * pageAction ( QWebPage::WebAction action ) const
$method=|QAction *|pageAction|QWebPage::WebAction|#ifndef QT_NO_ACTION

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

$prototype=void back ()
$slotMethod=|void|back|

$prototype=void forward ()
$slotMethod=|void|forward|

$prototype=void print ( QPrinter * printer ) const
$slotMethod=|void|print|QPrinter *

$prototype=void reload ()
$slotMethod=|void|reload|

$prototype=void stop ()
$slotMethod=|void|stop|

%% TODO: is virtual ?
$prototype=QVariant inputMethodQuery(Qt::InputMethodQuery property) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

%% TODO: is virtual ?
$prototype=QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=virtual bool event(QEvent*)
$virtualMethod=|bool|event|QEvent *

$beginSignals
$signal=|iconChanged()
$signal=|linkClicked(QUrl)
$signal=|loadFinished(bool)
$signal=|loadProgress(int)
$signal=|loadStarted()
$signal=|selectionChanged()
$signal=|statusBarMessage(QString)
$signal=|titleChanged(QString)
$signal=|urlChanged(QUrl)
$endSignals

#pragma ENDDUMP
