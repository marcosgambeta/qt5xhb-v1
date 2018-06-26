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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlNamePool ()
$internalConstructor=|new1|

$prototype=QXmlNamePool ( const QXmlNamePool & other )
$internalConstructor=|new2|const QXmlNamePool &

//[1]QXmlNamePool ()
//[2]QXmlNamePool ( const QXmlNamePool & other )

HB_FUNC_STATIC( QXMLNAMEPOOL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlNamePool_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    QXmlNamePool_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
