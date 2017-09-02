$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEHISTORY
REQUEST QWIDGET
REQUEST QACTION
REQUEST QMENU
REQUEST QURL
REQUEST QWEBENGINESETTINGS
#endif

CLASS QWebEnginePage INHERIT QObject

   METHOD new
   METHOD delete
   METHOD history
   METHOD view
   METHOD setView
   METHOD hasSelection
   METHOD selectedText
   METHOD action
   METHOD triggerAction
   METHOD event
   METHOD findText
   METHOD createStandardContextMenu
   METHOD setFeaturePermission
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD toHtml
   METHOD toPlainText
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD requestedUrl
   METHOD iconUrl
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD runJavaScript1
   METHOD runJavaScript2
   METHOD runJavaScript
   METHOD settings

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onLinkHovered
   METHOD onSelectionChanged
   METHOD onGeometryChangeRequested
   METHOD onWindowCloseRequested
   METHOD onFeaturePermissionRequested
   METHOD onFeaturePermissionRequestCanceled
   METHOD onAuthenticationRequired
   METHOD onProxyAuthenticationRequired
   METHOD onTitleChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QWebEnginePage(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
QWebEngineHistory *history() const
*/
$method=5,4,0|QWebEngineHistory *|history|

/*
QWidget *view() const
*/
$method=5,4,0|QWidget *|view|

/*
void setView(QWidget *view)
*/
$method=5,4,0|void|setView|QWidget *

/*
bool hasSelection() const
*/
$method=5,4,0|bool|hasSelection|

/*
QString selectedText() const
*/
$method=5,4,0|QString|selectedText|

/*
QAction *action(WebAction action) const
*/
$method=5,4,0|QAction *|action|QWebEnginePage::WebAction

/*
virtual void triggerAction(WebAction action, bool checked = false)
*/
$method=5,4,0|void|triggerAction|QWebEnginePage::WebAction,bool=false

/*
virtual bool event(QEvent*)
*/
$method=5,4,0|bool|event|QEvent *

/*
void findText(const QString &subString, FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/
$method=5,4,0|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

/*
QMenu *createStandardContextMenu()
*/
$method=5,4,0|QMenu *|createStandardContextMenu|

/*
void setFeaturePermission(const QUrl &securityOrigin, Feature feature, PermissionPolicy policy)
*/
$method=5,4,0|void|setFeaturePermission|const QUrl &,QWebEnginePage::Feature,QWebEnginePage::PermissionPolicy

/*
void load(const QUrl &url)
*/
$method=5,4,0|void|load|const QUrl &

/*
void setHtml(const QString &html, const QUrl &baseUrl = QUrl())
*/
$method=5,4,0|void|setHtml|const QString &,const QUrl &=QUrl()

/*
void setContent(const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl())
*/
$method=5,4,0|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

/*
void toHtml(const QWebEngineCallback<const QString &> &resultCallback) const
*/
$method=5,4,0|void|toHtml|const QWebEngineCallback<const QString &> &

/*
void toPlainText(const QWebEngineCallback<const QString &> &resultCallback) const
*/
$method=5,4,0|void|toPlainText|const QWebEngineCallback<const QString &> &

/*
QString title() const
*/
$method=5,4,0|QString|title|

/*
QUrl url() const
*/
$method=5,4,0|QUrl|url|

/*
void setUrl(const QUrl &url)
*/
$method=5,4,0|void|setUrl|const QUrl &

/*
QUrl requestedUrl() const
*/
$method=5,4,0|QUrl|requestedUrl|

/*
QUrl iconUrl() const
*/
$method=5,4,0|QUrl|iconUrl|

/*
qreal zoomFactor() const
*/
$method=5,4,0|qreal|zoomFactor|

/*
void setZoomFactor(qreal factor)
*/
$method=5,4,0|void|setZoomFactor|qreal

/*
void runJavaScript(const QString& scriptSource)
*/
$method=5,4,0|void|runJavaScript,runJavaScript1|const QString &

/*
void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)
*/
$method=5,4,0|void|runJavaScript,runJavaScript2|const QString &,const QWebEngineCallback<const QVariant &> &

//[1]void runJavaScript(const QString& scriptSource)
//[2]void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)

HB_FUNC( QWEBENGINEPAGE_RUNJAVASCRIPT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBENGINEPAGE_RUNJAVASCRIPT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QWEBENGINEPAGE_RUNJAVASCRIPT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebEngineSettings *settings() const
*/
$method=5,4,0|QWebEngineSettings *|settings|

#pragma ENDDUMP
