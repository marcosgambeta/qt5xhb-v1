%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

$beginClassFrom=QObject

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void fixup ( QString & input ) const
$virtualMethod=|void|fixup|QString &

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=virtual State validate ( QString & input, int & pos ) const = 0
$virtualMethod=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
