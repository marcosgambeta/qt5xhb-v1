%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSourceLocation ()
$internalConstructor=|new1|

$prototype=QSourceLocation ( const QSourceLocation & other )
$internalConstructor=|new2|const QSourceLocation &

$prototype=QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )
$internalConstructor=|new3|const QUrl &,int=-1,int=-1

/*
[1]QSourceLocation ()
[2]QSourceLocation ( const QSourceLocation & other )
[3]QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )
*/

HB_FUNC_STATIC( QSOURCELOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSourceLocation_new1();
  }
  else if( ISNUMPAR(1) && ISQSOURCELOCATION(1) )
  {
    QSourceLocation_new2();
  }
  else if( ISBETWEEN(1,3) && ISQURL(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QSourceLocation_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qint64 column () const
$method=|qint64|column|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=qint64 line () const
$method=|qint64|line|

$prototype=void setColumn ( qint64 newColumn )
$method=|void|setColumn|qint64

$prototype=void setLine ( qint64 newLine )
$method=|void|setLine|qint64

$prototype=void setUri ( const QUrl & newUri )
$method=|void|setUri|const QUrl &

$prototype=QUrl uri () const
$method=|QUrl|uri|

$extraMethods

#pragma ENDDUMP
