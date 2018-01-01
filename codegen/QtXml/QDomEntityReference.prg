%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDomEntityReference INHERIT QDomNode

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomEntityReference ()
$constructor=|new1|

$prototype=QDomEntityReference ( const QDomEntityReference & x )
$constructor=|new2|const QDomEntityReference &

//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMENTITYREFERENCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    HB_FUNC_EXEC( QDOMENTITYREFERENCE_NEW2 );
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
