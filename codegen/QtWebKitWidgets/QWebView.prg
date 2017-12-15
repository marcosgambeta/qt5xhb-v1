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

CLASS QWebView INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD findText
   METHOD history
   METHOD icon
   METHOD isModified
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD renderHints
   METHOD selectedText
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTextSizeMultiplier
   METHOD setUrl
   METHOD setZoomFactor
   METHOD settings
   METHOD textSizeMultiplier
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor
   METHOD back
   METHOD forward
   METHOD print
   METHOD reload
   METHOD stop

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onSelectionChanged
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QWidget>
#include <QUrl>

$prototype=QWebView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=bool isModified () const
$method=|bool|isModified|

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
$method=|QAction *|pageAction|QWebPage::WebAction

$prototype=QPainter::RenderHints renderHints () const
$method=|QPainter::RenderHints|renderHints|

$prototype=QString selectedText () const
$method=|QString|selectedText|

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$prototype=void setRenderHints ( QPainter::RenderHints hints )
$method=|void|setRenderHints|QPainter::RenderHints

$prototype=void setTextSizeMultiplier ( qreal factor )
$method=|void|setTextSizeMultiplier|qreal

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=qreal textSizeMultiplier () const
$method=|qreal|textSizeMultiplier|

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

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=void reload ()
$method=|void|reload|

$prototype=void stop ()
$method=|void|stop|

#pragma ENDDUMP
