%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QAction>
#include <QMenu>

$prototype=explicit QWebEnginePage(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=QWebEngineHistory *history() const
$method=5,4,0|QWebEngineHistory *|history|

$prototype=QWidget *view() const
$method=5,4,0|QWidget *|view|

$prototype=void setView(QWidget *view)
$method=5,4,0|void|setView|QWidget *

$prototype=bool hasSelection() const
$method=5,4,0|bool|hasSelection|

$prototype=QString selectedText() const
$method=5,4,0|QString|selectedText|

$prototype=QAction *action(WebAction action) const
$method=5,4,0|QAction *|action|QWebEnginePage::WebAction

$prototype=virtual void triggerAction(WebAction action, bool checked = false)
$virtualMethod=5,4,0|void|triggerAction|QWebEnginePage::WebAction,bool=false

$prototype=virtual bool event(QEvent*)
$virtualMethod=5,4,0|bool|event|QEvent *

$prototype=void findText(const QString &subString, FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
%% TODO: implementar
%% $method=5,4,0|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

$prototype=QMenu *createStandardContextMenu()
$method=5,4,0|QMenu *|createStandardContextMenu|

$prototype=void setFeaturePermission(const QUrl &securityOrigin, Feature feature, PermissionPolicy policy)
$method=5,4,0|void|setFeaturePermission|const QUrl &,QWebEnginePage::Feature,QWebEnginePage::PermissionPolicy

$prototype=void load(const QUrl &url)
$method=5,4,0|void|load|const QUrl &

$prototype=void setHtml(const QString &html, const QUrl &baseUrl = QUrl())
$method=5,4,0|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setContent(const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl())
$method=5,4,0|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void toHtml(const QWebEngineCallback<const QString &> &resultCallback) const
%% TODO: implementar
%% $method=5,4,0|void|toHtml|const QWebEngineCallback<const QString &> &

$prototype=void toPlainText(const QWebEngineCallback<const QString &> &resultCallback) const
%% TODO: implementar
%% $method=5,4,0|void|toPlainText|const QWebEngineCallback<const QString &> &

$prototype=QString title() const
$method=5,4,0|QString|title|

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=5,4,0|void|setUrl|const QUrl &

$prototype=QUrl requestedUrl() const
$method=5,4,0|QUrl|requestedUrl|

$prototype=QUrl iconUrl() const
$method=5,4,0|QUrl|iconUrl|

$prototype=qreal zoomFactor() const
$method=5,4,0|qreal|zoomFactor|

$prototype=void setZoomFactor(qreal factor)
$method=5,4,0|void|setZoomFactor|qreal

$prototype=void runJavaScript(const QString& scriptSource)
$internalMethod=5,4,0|void|runJavaScript,runJavaScript1|const QString &

$prototype=void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)
%% TODO: implementar
%% $internalMethod=5,4,0|void|runJavaScript,runJavaScript2|const QString &,const QWebEngineCallback<const QVariant &> &

//[1]void runJavaScript(const QString& scriptSource)
//[2]void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)

HB_FUNC( QWEBENGINEPAGE_RUNJAVASCRIPT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebEnginePage_runJavaScript1();
  }
%%  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
%%  {
%%    QWebEnginePage_runJavaScript2();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=runJavaScript

$prototype=QWebEngineSettings *settings() const
$method=5,4,0|QWebEngineSettings *|settings|

$beginSignals
$signal=5,4,0|loadStarted()
$signal=5,4,0|loadProgress(int)
$signal=5,4,0|loadFinished(bool)
$signal=5,4,0|linkHovered(QString)
$signal=5,4,0|selectionChanged()
$signal=5,4,0|geometryChangeRequested(QRect)
$signal=5,4,0|windowCloseRequested()
$signal=5,4,0|featurePermissionRequested(QUrl,QWebEnginePage::Feature)
$signal=5,4,0|featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)
$signal=5,4,0|authenticationRequired(QUrl,QAuthenticator*)
$signal=5,4,0|proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)
$signal=5,4,0|titleChanged(QString)
$signal=5,4,0|urlChanged(QUrl)
$signal=5,4,0|iconUrlChanged(QUrl)
$endSignals

#pragma ENDDUMP
