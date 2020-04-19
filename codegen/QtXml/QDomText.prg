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

$prototype=QDomText ()
$internalConstructor=|new1|

$prototype=QDomText ( const QDomText & x )
$internalConstructor=|new2|const QDomText &

/*
[1]QDomText ()
[2]QDomText ( const QDomText & x )
*/

HB_FUNC_STATIC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomText_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    QDomText_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomText splitText ( int offset )
$method=|QDomText|splitText|int

#pragma ENDDUMP
