%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
%%REQUEST UCHAR // TODO: corrigir
REQUEST QLOCALE
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD data
   METHOD fileName
   METHOD isCompressed
   METHOD isValid
   METHOD locale
   METHOD setFileName
   METHOD setLocale
   METHOD size
   METHOD registerResource
   METHOD unregisterResource

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
$constructor=|new|const QString &=QString(),const QLocale &=QLocale()

$deleteMethod

$prototype=QString absoluteFilePath () const
$method=|QString|absoluteFilePath|

$prototype=const uchar * data () const
%% TODO: implementar 'const uchar *'
$method=|const char *|data|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=bool isCompressed () const
$method=|bool|isCompressed|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setFileName ( const QString & file )
$method=|void|setFileName|const QString &

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=qint64 size () const
$method=|qint64|size|

$prototype=static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|registerResource|const QString &,const QString &=QString()

$prototype=static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|unregisterResource|const QString &,const QString &=QString()

$extraMethods

#pragma ENDDUMP
