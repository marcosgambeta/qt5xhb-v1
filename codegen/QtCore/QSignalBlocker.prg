%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$prototype=explicit QSignalBlocker(QObject *o) Q_DECL_NOTHROW
$constructor=5,3,0|new|QObject *

$prototype=explicit QSignalBlocker(QObject &o) Q_DECL_NOTHROW
%% TODO: check

%% #ifdef Q_COMPILER_RVALUE_REFS
%%     inline QSignalBlocker(QSignalBlocker &&other) Q_DECL_NOTHROW;
%%     inline QSignalBlocker &operator=(QSignalBlocker &&other) Q_DECL_NOTHROW;
%% #endif

//[1]explicit QSignalBlocker(QObject *o) Q_DECL_NOTHROW
//[2]explicit QSignalBlocker(QObject &o) Q_DECL_NOTHROW

$prototype=~QSignalBlocker()
$deleteMethod=5,3,0

$prototype=void reblock() Q_DECL_NOTHROW
$method=5,3,0|void|reblock|

$prototype=void unblock() Q_DECL_NOTHROW
$method=5,3,0|void|unblock|

$extraMethods

#pragma ENDDUMP
