$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEPAGE
REQUEST QWEBENGINEHISTORY
REQUEST QURL
REQUEST QACTION
REQUEST QSIZE
#endif

CLASS QWebEngineView INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD history
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD iconUrl
   METHOD hasSelection
   METHOD selectedText
   METHOD pageAction
   METHOD triggerPageAction
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD findText
   METHOD sizeHint
   METHOD stop
   METHOD back
   METHOD forward
   METHOD reload

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onTitleChanged
   METHOD onSelectionChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QWebEngineView(QWidget* parent = 0)
*/
$constructor=5,4,0|new|QWidget *=0

$deleteMethod=5,4,0

/*
QWebEnginePage* page() const
*/
$method=5,4,0|QWebEnginePage *|page|

/*
void setPage(QWebEnginePage* page)
*/
$method=5,4,0|void|setPage|QWebEnginePage *

/*
void load(const QUrl& url)
*/
$method=5,4,0|void|load|const QUrl &

/*
void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
*/
$method=5,4,0|void|setHtml|const QString &,const QUrl &=QUrl()

/*
void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
*/
$method=5,4,0|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

/*
QWebEngineHistory* history() const
*/
$method=5,4,0|QWebEngineHistory *|history|

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
QUrl iconUrl() const
*/
$method=5,4,0|QUrl|iconUrl|

/*
bool hasSelection() const
*/
$method=5,4,0|bool|hasSelection|

/*
QString selectedText() const
*/
$method=5,4,0|QString|selectedText|

/*
QAction* pageAction(QWebEnginePage::WebAction action) const
*/
$method=5,4,0|QAction *|pageAction|QWebEnginePage::WebAction|#ifndef QT_NO_ACTION

/*
void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
*/
$method=5,4,0|void|triggerPageAction|QWebEnginePage::WebAction,bool=false

/*
qreal zoomFactor() const
*/
$method=5,4,0|qreal|zoomFactor|

/*
void setZoomFactor(qreal factor)
*/
$method=5,4,0|void|setZoomFactor|qreal

/*
void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/
$method=5,4,0|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

/*
virtual QSize sizeHint() const
*/
$method=5,4,0|QSize|sizeHint|

/*
void stop()
*/
$method=5,4,0|void|stop|

/*
void back()
*/
$method=5,4,0|void|back|

/*
void forward()
*/
$method=5,4,0|void|forward|

/*
void reload()
*/
$method=5,4,0|void|reload|

#pragma ENDDUMP
