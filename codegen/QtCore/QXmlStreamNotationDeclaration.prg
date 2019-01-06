%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlStreamNotationDeclaration()
$internalConstructor=|new1|

$prototype=QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)
$internalConstructor=|new2|

//[1]QXmlStreamNotationDeclaration()
//[2]QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamNotationDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNOTATIONDECLARATION(1) )
  {
    QXmlStreamNotationDeclaration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStringRef name() const
$method=|QStringRef|name|

$prototype=QStringRef publicId() const
$method=|QStringRef|publicId|

$prototype=QStringRef systemId() const
$method=|QStringRef|systemId|

$extraMethods

#pragma ENDDUMP
