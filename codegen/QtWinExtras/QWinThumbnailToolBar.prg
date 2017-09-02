$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QWINTHUMBNAILTOOLBUTTON
#endif

CLASS QWinThumbnailToolBar INHERIT QObject

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD addButton
   METHOD removeButton
   METHOD setButtons
   METHOD buttons
   METHOD count
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinThumbnailToolBar(QObject *parent = 0)
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
void addButton(QWinThumbnailToolButton *button)
*/
$method=5,2,0|void|addButton|QWinThumbnailToolButton *

/*
void removeButton(QWinThumbnailToolButton *button)
*/
$method=5,2,0|void|removeButton|QWinThumbnailToolButton *

/*
void setButtons(const QList<QWinThumbnailToolButton *> &buttons)
*/
$method=5,2,0|void|setButtons|const QList<QWinThumbnailToolButton *> &

/*
QList<QWinThumbnailToolButton *> buttons() const
*/
$method=5,2,0|QList<QWinThumbnailToolButton *>|buttons|

/*
int count() const
*/
$method=5,2,0|int|count|

/*
void clear()
*/
$method=5,2,0|void|clear|

#pragma ENDDUMP
