%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete
   METHOD column
   METHOD description
   METHOD isValid
   METHOD line
   METHOD setColumn
   METHOD setDescription
   METHOD setLine
   METHOD setUrl
   METHOD toString
   METHOD url

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlError()
$internalConstructor=|new1|

$prototype=QQmlError(const QQmlError & other)
$internalConstructor=|new2|const QQmlError &

//[1]QQmlError()
//[2]QQmlError(const QQmlError & other)

HB_FUNC_STATIC( QQMLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlError_new1();
  }
  else if( ISNUMPAR(1) && ISQQMLERROR(1) )
  {
    QQmlError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int column() const
$method=|int|column|

$prototype=QString description() const
$method=|QString|description|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int line() const
$method=|int|line|

$prototype=void setColumn(int column)
$method=|void|setColumn|int

$prototype=void setDescription(const QString & description)
$method=|void|setDescription|const QString &

$prototype=void setLine(int line)
$method=|void|setLine|int

$prototype=void setUrl(const QUrl & url)
$method=|void|setUrl|const QUrl &

$prototype=QString toString() const
$method=|QString|toString|

$prototype=QUrl url() const
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
