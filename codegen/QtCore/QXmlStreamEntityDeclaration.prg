%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QXmlStreamEntityDeclaration()
$internalConstructor=|new1|

$prototype=QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
$internalConstructor=|new2|const QXmlStreamEntityDeclaration &

//[1]QXmlStreamEntityDeclaration()
//[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamEntityDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    QXmlStreamEntityDeclaration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStringRef name() const
$method=|QStringRef|name|

$prototype=QStringRef notationName() const
$method=|QStringRef|notationName|

$prototype=QStringRef publicId() const
$method=|QStringRef|publicId|

$prototype=QStringRef systemId() const
$method=|QStringRef|systemId|

$prototype=QStringRef value() const
$method=|QStringRef|value|

$extraMethods

#pragma ENDDUMP
