%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QWEBFRAME
REQUEST QWEBHISTORY
REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QPALETTE
REQUEST QWEBPLUGINFACTORY
REQUEST QSIZE
REQUEST QWEBSETTINGS
REQUEST QUNDOSTACK
REQUEST QWIDGET
#endif

CLASS QWebPage INHERIT QObject

   METHOD new
   METHOD delete

   METHOD action
   METHOD bytesReceived
   METHOD createStandardContextMenu
   METHOD currentFrame
   METHOD event
   //METHOD extension
   METHOD findText
   METHOD focusNextPrevChild
   METHOD forwardUnsupportedContent
   METHOD frameAt
   METHOD hasSelection
   METHOD history
   METHOD inputMethodQuery
   METHOD isContentEditable
   METHOD isModified
   METHOD linkDelegationPolicy
   METHOD mainFrame
   METHOD networkAccessManager
   METHOD palette
   METHOD pluginFactory
   METHOD preferredContentsSize
   METHOD selectedHtml
   METHOD selectedText
   METHOD setActualVisibleContentRect
   METHOD setContentEditable
   METHOD setFeaturePermission
   METHOD setForwardUnsupportedContent
   METHOD setLinkDelegationPolicy
   METHOD setNetworkAccessManager
   METHOD setPalette
   METHOD setPluginFactory
   METHOD setPreferredContentsSize
   METHOD settings
   METHOD setView
   METHOD setViewportSize
   METHOD setVisibilityState
   METHOD shouldInterruptJavaScript
   METHOD supportedContentTypes
   METHOD supportsContentType
   //METHOD supportsExtension
   METHOD swallowContextMenuEvent
   METHOD totalBytes
   METHOD triggerAction
   METHOD undoStack
   METHOD updatePositionDependentActions
   METHOD view
   METHOD viewportSize
   METHOD visibilityState

   METHOD onApplicationCacheQuotaExceeded
   METHOD onContentsChanged
   METHOD onDatabaseQuotaExceeded
   METHOD onDownloadRequested
   METHOD onFeaturePermissionRequestCanceled
   METHOD onFeaturePermissionRequested
   METHOD onFrameCreated
   METHOD onGeometryChangeRequested
   METHOD onLinkClicked
   METHOD onLinkHovered
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onMenuBarVisibilityChangeRequested
   METHOD onMicroFocusChanged
   METHOD onPrintRequested
   METHOD onRepaintRequested
   METHOD onRestoreFrameStateRequested
   METHOD onSaveFrameStateRequested
   METHOD onScrollRequested
   METHOD onSelectionChanged
   METHOD onStatusBarMessage
   METHOD onStatusBarVisibilityChangeRequested
   METHOD onToolBarVisibilityChangeRequested
   METHOD onUnsupportedContent
   METHOD onViewportChangeRequested
   METHOD onWindowCloseRequested

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QAction>
#include <QWebFrame>
#include <QNetworkAccessManager>
#include <QWebPluginFactory>
#include <QUndoStack>

$prototype=explicit QWebPage ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$prototype=~QWebPage()
$deleteMethod

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototype=bool isModified () const
$method=|bool|isModified|

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
%% Q_PROPERTY(QSize viewportSize READ viewportSize WRITE setViewportSize)
%%

$prototype=QSize viewportSize () const
$method=|QSize|viewportSize|

$prototype=void setViewportSize ( const QSize & size ) const
$method=|void|setViewportSize|const QSize &

%%
%% Q_PROPERTY(QSize preferredContentsSize READ preferredContentsSize WRITE setPreferredContentsSize)
%%

$prototype=QSize preferredContentsSize () const
$method=|QSize|preferredContentsSize|

$prototype=void setPreferredContentsSize ( const QSize & size ) const
$method=|void|setPreferredContentsSize|const QSize &

%%
%% Q_PROPERTY(bool forwardUnsupportedContent READ forwardUnsupportedContent WRITE setForwardUnsupportedContent)
%%

$prototype=bool forwardUnsupportedContent () const
$method=|bool|forwardUnsupportedContent|

$prototype=void setForwardUnsupportedContent ( bool forward )
$method=|void|setForwardUnsupportedContent|bool

%%
%% Q_PROPERTY(LinkDelegationPolicy linkDelegationPolicy READ linkDelegationPolicy WRITE setLinkDelegationPolicy)
%%

$prototype=LinkDelegationPolicy linkDelegationPolicy () const
$method=|QWebPage::LinkDelegationPolicy|linkDelegationPolicy|

$prototype=void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
$method=|void|setLinkDelegationPolicy|QWebPage::LinkDelegationPolicy

%%
%% Q_PROPERTY(QPalette palette READ palette WRITE setPalette)
%%

$prototype=QPalette palette () const
$method=|QPalette|palette|

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

%%
%% Q_PROPERTY(bool contentEditable READ isContentEditable WRITE setContentEditable)
%%

$prototype=bool isContentEditable () const
$method=|bool|isContentEditable|

$prototype=void setContentEditable ( bool editable )
$method=|void|setContentEditable|bool

%%
%% Q_PROPERTY(VisibilityState visibilityState READ visibilityState WRITE setVisibilityState)
%%

$prototype=VisibilityState visibilityState() const
$method=|QWebPage::VisibilityState|visibilityState|

$prototype=void setVisibilityState(VisibilityState)
$method=|void|setVisibilityState|QWebPage::VisibilityState

%%
%%
%%

$prototype=QAction * action ( WebAction action ) const
$method=|QAction *|action|QWebPage::WebAction|#ifndef QT_NO_ACTION

$prototype=quint64 bytesReceived () const
$method=|quint64|bytesReceived|

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=QWebFrame * currentFrame () const
$method=|QWebFrame *|currentFrame|

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
%% TODO: corrigir (QWebPage::Extension é uma classe)
%% $virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=0,QWebPage::ExtensionReturn *=0

$prototype=bool findText ( const QString & subString, FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=bool focusNextPrevChild ( bool next )
$method=|bool|focusNextPrevChild|bool

$prototype=QWebFrame * frameAt ( const QPoint & pos ) const
$method=|QWebFrame *|frameAt|const QPoint &

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=QWebFrame * mainFrame () const
$method=|QWebFrame *|mainFrame|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QWebPluginFactory * pluginFactory () const
$method=|QWebPluginFactory *|pluginFactory|

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setPluginFactory ( QWebPluginFactory * factory )
$method=|void|setPluginFactory|QWebPluginFactory *

$prototype=void setView ( QWidget * view )
$method=|void|setView|QWidget *

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=virtual bool supportsExtension ( Extension extension ) const
%% TODO: corrigir (QWebPage::Extension é uma classe)
%% $virtualMethod=|bool|supportsExtension|QWebPage::Extension

$prototype=bool swallowContextMenuEvent ( QContextMenuEvent * event )
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *|#ifndef QT_NO_CONTEXTMENU

$prototype=quint64 totalBytes () const
$method=|quint64|totalBytes|

$prototype=virtual void triggerAction ( WebAction action, bool checked = false )
$virtualMethod=|void|triggerAction|QWebPage::WebAction,bool=false

$prototype=QUndoStack * undoStack () const
$method=|QUndoStack *|undoStack||#ifndef QT_NO_UNDOSTACK

$prototype=void updatePositionDependentActions ( const QPoint & pos )
$method=|void|updatePositionDependentActions|const QPoint &

$prototype=QWidget * view () const
$method=|QWidget *|view|

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

%% TODO: is virtual ?
%% virtual bool shouldInterruptJavaScript()
$prototype=bool shouldInterruptJavaScript ()
$method=|bool|shouldInterruptJavaScript|

$prototype=ViewportAttributes viewportAttributesForSize(const QSize& availableSize) const
%% TODO: QWebPage::ViewportAttributes is a class
%% $method=|QWebPage::ViewportAttributes|viewportAttributesForSize|const QSize &

$prototype=void setActualVisibleContentRect(const QRect& rect) const
$method=|void|setActualVisibleContentRect|const QRect &

$prototype=void setFeaturePermission(QWebFrame* frame, Feature feature, PermissionPolicy policy)
$method=|void|setFeaturePermission|QWebFrame *,QWebPage::Feature,QWebPage::PermissionPolicy

$prototype=QStringList supportedContentTypes() const
$method=|QStringList|supportedContentTypes|

$prototype=bool supportsContentType(const QString& mimeType) const
$method=|bool|supportsContentType|const QString &

$prototype=QWebPageAdapter* handle() const
%% TODO: implement ? (not present in the documentation)

#pragma ENDDUMP
