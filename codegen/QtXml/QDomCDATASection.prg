%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomText

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomCDATASection ()
$internalConstructor=|new1|

$prototype=QDomCDATASection ( const QDomCDATASection & x )
$internalConstructor=|new2|const QDomCDATASection &

//[1]QDomCDATASection ()
//[2]QDomCDATASection ( const QDomCDATASection & x )

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomCDATASection_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    QDomCDATASection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
