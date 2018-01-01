%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QWhatsThis

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createAction
   METHOD enterWhatsThisMode
   METHOD hideText
   METHOD inWhatsThisMode
   METHOD leaveWhatsThisMode
   METHOD showText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

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
