%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractButton

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>
#include <QMenu>

$prototype=explicit QToolButton ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=Qt::ArrowType arrowType () const
$method=|Qt::ArrowType|arrowType|

$prototype=bool autoRaise () const
$method=|bool|autoRaise|

$prototype=QAction * defaultAction () const
$method=|QAction *|defaultAction|

$prototype=QMenu * menu () const
$method=|QMenu *|menu||#ifndef QT_NO_MENU

$prototype=ToolButtonPopupMode popupMode () const
$method=|QToolButton::ToolButtonPopupMode|popupMode||#ifndef QT_NO_MENU

$prototype=void setArrowType ( Qt::ArrowType type )
$method=|void|setArrowType|Qt::ArrowType

$prototype=void setAutoRaise ( bool enable )
$method=|void|setAutoRaise|bool

$prototype=void setMenu ( QMenu * menu )
$method=|void|setMenu|QMenu *|#ifndef QT_NO_MENU

$prototype=void setPopupMode ( ToolButtonPopupMode mode )
$method=|void|setPopupMode|QToolButton::ToolButtonPopupMode|#ifndef QT_NO_MENU

$prototype=Qt::ToolButtonStyle toolButtonStyle () const
$method=|Qt::ToolButtonStyle|toolButtonStyle|

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=void setDefaultAction ( QAction * action )
$method=|void|setDefaultAction|QAction *

$prototype=void setToolButtonStyle ( Qt::ToolButtonStyle style )
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

$prototype=void showMenu ()
$method=|void|showMenu||#ifndef QT_NO_MENU

$beginSignals
$signal=|triggered(QAction*)
$endSignals

#pragma ENDDUMP
