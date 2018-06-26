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
   METHOD isNull
   METHOD localName
   METHOD namespaceUri
   METHOD prefix
   METHOD toClarkName
   METHOD fromClarkName
   METHOD isNCName

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlName ()
$internalConstructor=|new1|

$prototype=QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
$internalConstructor=|new2|QXmlNamePool &,const QString &,const QString &=QString(),const QString &=QString()

//[1]QXmlName ()
//[2]QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )

HB_FUNC_STATIC( QXMLNAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlName_new1();
  }
  else if( ISBETWEEN(2,4) && ISQXMLNAMEPOOL(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QXmlName_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QString localName ( const QXmlNamePool & namePool ) const
$method=|QString|localName|const QXmlNamePool &

$prototype=QString namespaceUri ( const QXmlNamePool & namePool ) const
$method=|QString|namespaceUri|const QXmlNamePool &

$prototype=QString prefix ( const QXmlNamePool & namePool ) const
$method=|QString|prefix|const QXmlNamePool &

$prototype=QString toClarkName ( const QXmlNamePool & namePool ) const
$method=|QString|toClarkName|const QXmlNamePool &

$prototype=static QXmlName fromClarkName ( const QString & clarkName, const QXmlNamePool & namePool )
$staticMethod=|QXmlName|fromClarkName|const QString &,const QXmlNamePool &

$prototype=static bool isNCName ( const QString & candidate )
$staticMethod=|bool|isNCName|const QString &

$extraMethods

#pragma ENDDUMP
