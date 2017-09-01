$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QICON
REQUEST QWINTASKBARPROGRESS
#endif

CLASS QWinTaskbarButton INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD overlayIcon
   METHOD setOverlayIcon
   METHOD clearOverlayIcon
   METHOD overlayAccessibleDescription
   METHOD setOverlayAccessibleDescription
   METHOD progress
   METHOD eventFilter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinTaskbarButton(QObject *parent = 0)
*/
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

/*
QWindow *window() const
*/
$method=5,2,0|QWindow *|window|

/*
void setWindow(QWindow *window)
*/
$method=5,2,0|void|setWindow|QWindow *

/*
QIcon overlayIcon() const
*/
$method=5,2,0|QIcon|overlayIcon|

/*
void setOverlayIcon(const QIcon &icon)
*/
$method=5,2,0|void|setOverlayIcon|const QIcon &

/*
void clearOverlayIcon()
*/
$method=5,2,0|void|clearOverlayIcon|

/*
QString overlayAccessibleDescription() const
*/
$method=5,2,0|QString|overlayAccessibleDescription|

/*
void setOverlayAccessibleDescription(const QString &description)
*/
$method=5,2,0|void|setOverlayAccessibleDescription|const QString &

/*
QWinTaskbarProgress *progress() const
*/
$method=5,2,0|QWinTaskbarProgress *|progress|

/*
bool eventFilter(QObject *, QEvent *)
*/
$method=5,2,0|bool|eventFilter|QObject *,QEvent *

#pragma ENDDUMP
