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

   DATA self_destruction INIT .F.

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

/*
QGraphicsWebView ( QGraphicsItem * parent = 0 )
*/
$constructor=|new|QGraphicsItem *=0

$deleteMethod

/*
bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
*/
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

/*
QWebHistory * history () const
*/
$method=|QWebHistory *|history|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
bool isModified () const
*/
$method=|bool|isModified|

/*
bool isTiledBackingStoreFrozen () const
*/
$method=|bool|isTiledBackingStoreFrozen|

/*
void load ( const QUrl & url )
*/
$internalMethod=|void|load,load1|const QUrl &

/*
void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
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

/*
QWebPage * page () const
*/
$method=|QWebPage *|page|

/*
QAction * pageAction ( QWebPage::WebAction action ) const
*/
$method=|QAction *|pageAction|QWebPage::WebAction

/*
bool resizesToContents () const
*/
$method=|bool|resizesToContents|

/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

/*
void setPage ( QWebPage * page )
*/
$method=|void|setPage|QWebPage *

/*
void setResizesToContents ( bool enabled )
*/
$method=|void|setResizesToContents|bool

/*
void setTiledBackingStoreFrozen ( bool frozen )
*/
$method=|void|setTiledBackingStoreFrozen|bool

/*
void setUrl ( const QUrl & )
*/
$method=|void|setUrl|const QUrl &

/*
void setZoomFactor ( qreal )
*/
$method=|void|setZoomFactor|qreal

/*
QWebSettings * settings () const
*/
$method=|QWebSettings *|settings|

/*
QString title () const
*/
$method=|QString|title|

/*
void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
*/
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

/*
QUrl url () const
*/
$method=|QUrl|url|

/*
qreal zoomFactor () const
*/
$method=|qreal|zoomFactor|

/*
void back ()
*/
$method=|void|back|

/*
void forward ()
*/
$method=|void|forward|

/*
void reload ()
*/
$method=|void|reload|

/*
void stop ()
*/
$method=|void|stop|

#pragma ENDDUMP
