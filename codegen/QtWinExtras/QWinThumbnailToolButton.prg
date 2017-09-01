$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinThumbnailToolButton INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toolTip
   METHOD setToolTip
   METHOD icon
   METHOD setIcon
   METHOD isEnabled
   METHOD setEnabled
   METHOD isInteractive
   METHOD setInteractive
   METHOD isVisible
   METHOD setVisible
   METHOD dismissOnClick
   METHOD setDismissOnClick
   METHOD isFlat
   METHOD setFlat
   METHOD click

   METHOD onClicked
   METHOD onChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinThumbnailToolButton(QObject *parent = 0)
*/
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

/*
QString toolTip() const
*/
$method=5,2,0|QString|toolTip|

/*
void setToolTip(const QString &toolTip)
*/
$method=5,2,0|void|setToolTip|const QString &

/*
QIcon icon() const
*/
$method=5,2,0|QIcon|icon|

/*
void setIcon(const QIcon &icon)
*/
$method=5,2,0|void|setIcon|const QIcon &

/*
bool isEnabled() const
*/
$method=5,2,0|bool|isEnabled|

/*
void setEnabled(bool enabled)
*/
$method=5,2,0|void|setEnabled|bool

/*
bool isInteractive() const
*/
$method=5,2,0|bool|isInteractive|

/*
void setInteractive(bool interactive)
*/
$method=5,2,0|void|setInteractive|bool

/*
bool isVisible() const
*/
$method=5,2,0|bool|isVisible|

/*
void setVisible(bool visible)
*/
$method=5,2,0|void|setVisible|bool

/*
bool dismissOnClick() const
*/
$method=5,2,0|bool|dismissOnClick|

/*
void setDismissOnClick(bool dismiss)
*/
$method=5,2,0|void|setDismissOnClick|bool

/*
bool isFlat() const
*/
$method=5,2,0|bool|isFlat|

/*
void setFlat(bool flat)
*/
$method=5,2,0|void|setFlat|bool

/*
void click()
*/
$method=5,2,0|void|click|

#pragma ENDDUMP
