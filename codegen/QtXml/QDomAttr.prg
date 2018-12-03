%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomAttr ()
$internalConstructor=|new1|

$prototype=QDomAttr ( const QDomAttr & x )
$internalConstructor=|new2|const QDomAttr &

//[1]QDomAttr ()
//[2]QDomAttr ( const QDomAttr & x )

HB_FUNC_STATIC( QDOMATTR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomAttr_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMATTR(1) )
  {
    QDomAttr_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString name () const
$method=|QString|name|

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomElement ownerElement () const
$method=|QDomElement|ownerElement|

$prototype=void setValue ( const QString & v )
$method=|void|setValue|const QString &

$prototype=bool specified () const
$method=|bool|specified|

$prototype=QString value () const
$method=|QString|value|

#pragma ENDDUMP
