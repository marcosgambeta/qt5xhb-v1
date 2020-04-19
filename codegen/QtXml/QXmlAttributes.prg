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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlAttributes ()
$constructor=|new|

$deleteMethod

$prototype=void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
$method=|void|append|const QString &,const QString &,const QString &,const QString &

$prototype=void clear ()
$method=|void|clear|

$prototype=int count () const
$method=|int|count|

$prototype=int index ( const QString & qName ) const
$internalMethod=|int|index,index1|const QString &

$prototype=int index ( const QLatin1String & qName ) const
$internalMethod=|int|index,index2|const QLatin1String &

$prototype=int index ( const QString & uri, const QString & localPart ) const
$internalMethod=|int|index,index3|const QString &,const QString &

/*
[1]int index ( const QString & qName ) const
[2]int index ( const QLatin1String & qName ) const
[3]int index ( const QString & uri, const QString & localPart ) const
*/

HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlAttributes_index1();
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    QXmlAttributes_index2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlAttributes_index3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=index

$prototype=int length () const
$method=|int|length|

$prototype=QString localName ( int index ) const
$method=|QString|localName|int

$prototype=QString qName ( int index ) const
$method=|QString|qName|int

$prototype=QString type ( int index ) const
$internalMethod=|QString|type,type1|int

$prototype=QString type ( const QString & qName ) const
$internalMethod=|QString|type,type2|const QString &

$prototype=QString type ( const QString & uri, const QString & localName ) const
$internalMethod=|QString|type,type3|const QString &,const QString &

/*
[1]QString type ( int index ) const
[2]QString type ( const QString & qName ) const
[3]QString type ( const QString & uri, const QString & localName ) const
*/

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXmlAttributes_type1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlAttributes_type2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlAttributes_type3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=type

$prototype=QString uri ( int index ) const
$method=|QString|uri|int

$prototype=QString value ( int index ) const
$internalMethod=|QString|value,value1|int

$prototype=QString value ( const QString & qName ) const
$internalMethod=|QString|value,value2|const QString &

$prototype=QString value ( const QLatin1String & qName ) const
$internalMethod=|QString|value,value3|const QLatin1String &

$prototype=QString value ( const QString & uri, const QString & localName ) const
$internalMethod=|QString|value,value4|const QString &,const QString &

/*
[1]QString value ( int index ) const
[2]QString value ( const QString & qName ) const
[3]QString value ( const QLatin1String & qName ) const
[4]QString value ( const QString & uri, const QString & localName ) const
*/

HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXmlAttributes_value1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlAttributes_value2();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QXmlAttributes_value3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlAttributes_value4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=value

$extraMethods

#pragma ENDDUMP
