%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHelpSearchQuery ()
$internalConstructor=|new1|

$prototype=QHelpSearchQuery ( FieldName field, const QStringList & wordList )
$internalConstructor=|new2|QHelpSearchQuery::FieldName,const QStringList &

//[1]QHelpSearchQuery ()
//[2]QHelpSearchQuery ( FieldName field, const QStringList & wordList )

HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHelpSearchQuery_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QHelpSearchQuery_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
