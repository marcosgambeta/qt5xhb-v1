%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomCharacterData

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomComment ()
$internalConstructor=|new1|

$prototype=QDomComment ( const QDomComment & x )
$internalConstructor=|new2|const QDomComment &

/*
[1]QDomComment ()
[2]QDomComment ( const QDomComment & x )
*/

HB_FUNC_STATIC( QDOMCOMMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomComment_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCOMMENT(1) )
  {
    QDomComment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode::NodeType nodeType () cons
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
