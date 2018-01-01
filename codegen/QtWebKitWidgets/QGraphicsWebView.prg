%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBHISTORY
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QACTION
REQUEST QWEBSETTINGS
REQUEST QURL
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD findText
   METHOD history
   METHOD icon
   METHOD isModified
   METHOD isTiledBackingStoreFrozen
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD resizesToContents
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setResizesToContents
   METHOD setTiledBackingStoreFrozen
   METHOD setUrl
   METHOD setZoomFactor
   METHOD settings
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor
   METHOD back
   METHOD forward
   METHOD reload
   METHOD stop

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsWebView ( QGraphicsItem * parent = 0 )
$constructor=|new|QGraphicsItem *=0

$deleteMethod

$prototype=bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=bool isModified () const
$method=|bool|isModified|

$prototype=bool isTiledBackingStoreFrozen () const
$method=|bool|isTiledBackingStoreFrozen|

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

$prototype=bool resizesToContents () const
$method=|bool|resizesToContents|

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=void setResizesToContents ( bool enabled )
$method=|void|setResizesToContents|bool

$prototype=void setTiledBackingStoreFrozen ( bool frozen )
$method=|void|setTiledBackingStoreFrozen|bool

$prototype=void setUrl ( const QUrl & )
$method=|void|setUrl|const QUrl &

$prototype=void setZoomFactor ( qreal )
$method=|void|setZoomFactor|qreal

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=QString title () const
$method=|QString|title|

$prototype=void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=qreal zoomFactor () const
$method=|qreal|zoomFactor|

$prototype=void back ()
$method=|void|back|

$prototype=void forward ()
$method=|void|forward|

$prototype=void reload ()
$method=|void|reload|

$prototype=void stop ()
$method=|void|stop|

#pragma ENDDUMP
