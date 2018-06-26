%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD createAction
   METHOD enterWhatsThisMode
   METHOD hideText
   METHOD inWhatsThisMode
   METHOD leaveWhatsThisMode
   METHOD showText

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$deleteMethod

$prototype=static QAction * createAction(QObject * parent = 0)
$staticMethod=|QAction *|createAction|QObject *=0

$prototype=static void enterWhatsThisMode()
$staticMethod=|void|enterWhatsThisMode|

$prototype=static void hideText()
$staticMethod=|void|hideText|

$prototype=static bool inWhatsThisMode()
$staticMethod=|bool|inWhatsThisMode|

$prototype=static void leaveWhatsThisMode()
$staticMethod=|void|leaveWhatsThisMode|

$prototype=static void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
$staticMethod=|void|showText|const QPoint &,const QString &,QWidget *=0

$extraMethods

#pragma ENDDUMP
