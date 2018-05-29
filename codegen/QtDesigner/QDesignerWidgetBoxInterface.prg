%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString fileName () const = 0
$virtualMethod=|QString|fileName|

$prototype=virtual bool load () = 0
$virtualMethod=|bool|load|

$prototype=virtual bool save () = 0
$virtualMethod=|bool|save|

$prototype=virtual void setFileName ( const QString & fileName ) = 0
$virtualMethod=|void|setFileName|const QString &

#pragma ENDDUMP
