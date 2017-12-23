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
   METHOD extension
   METHOD findText
   METHOD focusNextPrevChild
   METHOD forwardUnsupportedContent
   METHOD frameAt
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
   METHOD selectedText
   METHOD setContentEditable
   METHOD setForwardUnsupportedContent
   METHOD setLinkDelegationPolicy
   METHOD setNetworkAccessManager
   METHOD setPalette
   METHOD setPluginFactory
   METHOD setPreferredContentsSize
   METHOD setView
   METHOD setViewportSize
   METHOD settings
   METHOD supportsExtension
   METHOD swallowContextMenuEvent
   METHOD totalBytes
   METHOD triggerAction
   METHOD undoStack
   METHOD updatePositionDependentActions
   METHOD view
   METHOD viewportSize
   METHOD event
   METHOD shouldInterruptJavaScript

   METHOD onContentsChanged
   METHOD onDatabaseQuotaExceeded
   METHOD onDownloadRequested
   METHOD onFrameCreated
   METHOD onGeometryChangeRequested
   METHOD onLinkClicked
   METHOD onLinkHovered
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD omMenuBarVisibilityChangeRequested
   METHOD omMicroFocusChanged
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
   METHOD onWindowCloseRequested

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=QWebPage ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QAction * action ( WebAction action ) const
$method=|QAction *|action|QWebPage::WebAction

$prototype=quint64 bytesReceived () const
$method=|quint64|bytesReceived|

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=QWebFrame * currentFrame () const
$method=|QWebFrame *|currentFrame|

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
$virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=0,QWebPage::ExtensionReturn *=0

$prototype=bool findText ( const QString & subString, FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=bool focusNextPrevChild ( bool next )
$method=|bool|focusNextPrevChild|bool

$prototype=bool forwardUnsupportedContent () const
$method=|bool|forwardUnsupportedContent|

$prototype=QWebFrame * frameAt ( const QPoint & pos ) const
$method=|QWebFrame *|frameAt|const QPoint &

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=bool isContentEditable () const
$method=|bool|isContentEditable|

$prototype=bool isModified () const
$method=|bool|isModified|

$prototype=LinkDelegationPolicy linkDelegationPolicy () const
$method=|QWebPage::LinkDelegationPolicy|linkDelegationPolicy|

$prototype=QWebFrame * mainFrame () const
$method=|QWebFrame *|mainFrame|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QPalette palette () const
$method=|QPalette|palette|

$prototype=QWebPluginFactory * pluginFactory () const
$method=|QWebPluginFactory *|pluginFactory|

$prototype=QSize preferredContentsSize () const
$method=|QSize|preferredContentsSize|

$prototype=QString selectedText () const
$method=|QString|selectedText|

$prototype=void setContentEditable ( bool editable )
$method=|void|setContentEditable|bool

$prototype=void setForwardUnsupportedContent ( bool forward )
$method=|void|setForwardUnsupportedContent|bool

$prototype=void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
$method=|void|setLinkDelegationPolicy|QWebPage::LinkDelegationPolicy

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

$prototype=void setPluginFactory ( QWebPluginFactory * factory )
$method=|void|setPluginFactory|QWebPluginFactory *

$prototype=void setPreferredContentsSize ( const QSize & size ) const
$method=|void|setPreferredContentsSize|const QSize &

$prototype=void setView ( QWidget * view )
$method=|void|setView|QWidget *

$prototype=void setViewportSize ( const QSize & size ) const
$method=|void|setViewportSize|const QSize &

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=virtual bool supportsExtension ( Extension extension ) const
$virtualMethod=|bool|supportsExtension|QWebPage::Extension

$prototype=bool swallowContextMenuEvent ( QContextMenuEvent * event )
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *

$prototype=quint64 totalBytes () const
$method=|quint64|totalBytes|

$prototype=virtual void triggerAction ( WebAction action, bool checked = false )
$virtualMethod=|void|triggerAction|QWebPage::WebAction,bool=false

$prototype=QUndoStack * undoStack () const
$method=|QUndoStack *|undoStack|

$prototype=void updatePositionDependentActions ( const QPoint & pos )
$method=|void|updatePositionDependentActions|const QPoint &

$prototype=QWidget * view () const
$method=|QWidget *|view|

$prototype=QSize viewportSize () const
$method=|QSize|viewportSize|

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

$prototype=bool shouldInterruptJavaScript ()
$method=|bool|shouldInterruptJavaScript|

#pragma ENDDUMP
