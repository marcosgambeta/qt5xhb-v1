%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QVideoWidget

   METHOD new
   METHOD delete
   METHOD mediaObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraViewfinder(QWidget * parent = 0)
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=virtual QMediaObject * mediaObject() const
$virtualMethod=|QMediaObject *|mediaObject|

#pragma ENDDUMP
