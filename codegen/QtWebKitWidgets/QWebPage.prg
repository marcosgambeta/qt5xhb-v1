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

/*
QWebPage ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QAction * action ( WebAction action ) const
*/
$method=|QAction *|action|QWebPage::WebAction

/*
quint64 bytesReceived () const
*/
$method=|quint64|bytesReceived|

/*
QMenu * createStandardContextMenu ()
*/
$method=|QMenu *|createStandardContextMenu|

/*
QWebFrame * currentFrame () const
*/
$method=|QWebFrame *|currentFrame|

/*
virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
*/
$method=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=0,QWebPage::ExtensionReturn *=0

/*
bool findText ( const QString & subString, FindFlags options = 0 )
*/
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

/*
bool focusNextPrevChild ( bool next )
*/
$method=|bool|focusNextPrevChild|bool

/*
bool forwardUnsupportedContent () const
*/
$method=|bool|forwardUnsupportedContent|

/*
QWebFrame * frameAt ( const QPoint & pos ) const
*/
$method=|QWebFrame *|frameAt|const QPoint &

/*
QWebHistory * history () const
*/
$method=|QWebHistory *|history|

/*
QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
bool isContentEditable () const
*/
$method=|bool|isContentEditable|

/*
bool isModified () const
*/
$method=|bool|isModified|

/*
LinkDelegationPolicy linkDelegationPolicy () const
*/
$method=|QWebPage::LinkDelegationPolicy|linkDelegationPolicy|

/*
QWebFrame * mainFrame () const
*/
$method=|QWebFrame *|mainFrame|

/*
QNetworkAccessManager * networkAccessManager () const
*/
$method=|QNetworkAccessManager *|networkAccessManager|

/*
QPalette palette () const
*/
$method=|QPalette|palette|

/*
QWebPluginFactory * pluginFactory () const
*/
$method=|QWebPluginFactory *|pluginFactory|

/*
QSize preferredContentsSize () const
*/
$method=|QSize|preferredContentsSize|

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
void setContentEditable ( bool editable )
*/
$method=|void|setContentEditable|bool

/*
void setForwardUnsupportedContent ( bool forward )
*/
$method=|void|setForwardUnsupportedContent|bool

/*
void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
*/
$method=|void|setLinkDelegationPolicy|QWebPage::LinkDelegationPolicy

/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

/*
void setPalette ( const QPalette & palette )
*/
$method=|void|setPalette|const QPalette &

/*
void setPluginFactory ( QWebPluginFactory * factory )
*/
$method=|void|setPluginFactory|QWebPluginFactory *

/*
void setPreferredContentsSize ( const QSize & size ) const
*/
$method=|void|setPreferredContentsSize|const QSize &

/*
void setView ( QWidget * view )
*/
$method=|void|setView|QWidget *

/*
void setViewportSize ( const QSize & size ) const
*/
$method=|void|setViewportSize|const QSize &

/*
QWebSettings * settings () const
*/
$method=|QWebSettings *|settings|

/*
virtual bool supportsExtension ( Extension extension ) const
*/
$method=|bool|supportsExtension|QWebPage::Extension

/*
bool swallowContextMenuEvent ( QContextMenuEvent * event )
*/
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *

/*
quint64 totalBytes () const
*/
$method=|quint64|totalBytes|

/*
virtual void triggerAction ( WebAction action, bool checked = false )
*/
$method=|void|triggerAction|QWebPage::WebAction,bool=false

/*
QUndoStack * undoStack () const
*/
$method=|QUndoStack *|undoStack|

/*
void updatePositionDependentActions ( const QPoint & pos )
*/
$method=|void|updatePositionDependentActions|const QPoint &

/*
QWidget * view () const
*/
$method=|QWidget *|view|

/*
QSize viewportSize () const
*/
$method=|QSize|viewportSize|

/*
virtual bool event ( QEvent * ev )
*/
$method=|bool|event|QEvent *

/*
bool shouldInterruptJavaScript ()
*/
$method=|bool|shouldInterruptJavaScript|

#pragma ENDDUMP
