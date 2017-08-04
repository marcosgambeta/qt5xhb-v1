$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QWidgetAction INHERIT QAction

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWidgetAction(QObject * parent)
*/
$constructor=|new|QObject *

$deleteMethod

/*
QWidget * defaultWidget() const
*/
$method=|QWidget *|defaultWidget|

/*
void releaseWidget(QWidget * widget)
*/
$method=|void|releaseWidget|QWidget *

/*
QWidget * requestWidget(QWidget * parent)
*/
$method=|QWidget *|requestWidget|QWidget *

/*
void setDefaultWidget(QWidget * widget)
*/
$method=|void|setDefaultWidget|QWidget *

#pragma ENDDUMP
