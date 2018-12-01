%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

%% TODO: implementação pendente

$prototype=QQmlListProperty(QObject * object, QList<T *> & list)

$prototype=QQmlListProperty(QObject * object, void * data, AppendFunction append, CountFunction count = 0, AtFunction at = 0, ClearFunction clear = 0)

//[1]QQmlListProperty(QObject * object, QList<T *> & list)
//[2]QQmlListProperty(QObject * object, void * data, AppendFunction append, CountFunction count = 0, AtFunction at = 0, ClearFunction clear = 0)

%% TODO: implementar
HB_FUNC_STATIC( QQMLLISTPROPERTY_NEW )
{
}
$addMethod=new

$extraMethods

#pragma ENDDUMP
