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

$prototype=QByteArrayMatcher ()
$internalConstructor=|new1|

$prototype=QByteArrayMatcher ( const QByteArray & pattern )
$internalConstructor=|new2|const QByteArray &

$prototype=QByteArrayMatcher ( const char * pattern, int length )
$internalConstructor=|new3|const char *,int

$prototype=QByteArrayMatcher ( const QByteArrayMatcher & other )
$internalConstructor=|new4|const QByteArrayMatcher &

//[1]QByteArrayMatcher()
//[2]QByteArrayMatcher(const QByteArray & pattern)
//[3]QByteArrayMatcher(const char * pattern, int length)
//[4]QByteArrayMatcher(const QByteArrayMatcher & other)

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QByteArrayMatcher_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArrayMatcher_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QByteArrayMatcher_new3();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAYMATCHER(1) )
  {
    QByteArrayMatcher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int indexIn ( const QByteArray & ba, int from = 0 ) const
$internalMethod=|int|indexIn,indexIn1|const QByteArray &,int=0

$prototype=int indexIn ( const char * str, int len, int from = 0 ) const
$internalMethod=|int|indexIn,indexIn2|const char *,int,int=0

//[1]int indexIn(const QByteArray & ba, int from = 0) const
//[2]int indexIn(const char * str, int len, int from = 0) const

HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QByteArrayMatcher_indexIn1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QByteArrayMatcher_indexIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=indexIn

$prototype=QByteArray pattern () const
$method=|QByteArray|pattern|

$prototype=void setPattern ( const QByteArray & pattern )
$method=|void|setPattern|const QByteArray &

$extraMethods

#pragma ENDDUMP
