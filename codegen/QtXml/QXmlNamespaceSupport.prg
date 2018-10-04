%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlNamespaceSupport ()
$constructor=|new|

$deleteMethod

$prototype=void popContext ()
$method=|void|popContext|

$prototype=QString prefix ( const QString & uri ) const
$method=|QString|prefix|const QString &

$prototype=QStringList prefixes () const
$internalMethod=|QStringList|prefixes,prefixes1|

$prototype=QStringList prefixes ( const QString & uri ) const
$internalMethod=|QStringList|prefixes,prefixes2|const QString &

//[1]QStringList prefixes () const
//[2]QStringList prefixes ( const QString & uri ) const

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIXES )
{
  if( ISNUMPAR(0) )
  {
    QXmlNamespaceSupport_prefixes1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlNamespaceSupport_prefixes2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=prefixes

$prototype=void processName ( const QString & qname, bool isAttribute, QString & nsuri, QString & localname ) const
$method=|void|processName|const QString &,bool,QString &,QString &

$prototype=void pushContext ()
$method=|void|pushContext|

$prototype=void reset ()
$method=|void|reset|

$prototype=void setPrefix ( const QString & pre, const QString & uri )
$method=|void|setPrefix|const QString &,const QString &

$prototype=void splitName ( const QString & qname, QString & prefix, QString & localname ) const
$method=|void|splitName|const QString &,QString &,QString &

$prototype=QString uri ( const QString & prefix ) const
$method=|QString|uri|const QString &

$extraMethods

#pragma ENDDUMP
