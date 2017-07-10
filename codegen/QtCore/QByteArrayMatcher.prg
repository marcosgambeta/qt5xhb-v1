$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QByteArrayMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD indexIn
   METHOD pattern
   METHOD setPattern

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QByteArrayMatcher ()
*/
$internalConstructor=|new1|

/*
QByteArrayMatcher ( const QByteArray & pattern )
*/
$internalConstructor=|new2|const QByteArray &

/*
QByteArrayMatcher ( const char * pattern, int length )
*/
$internalConstructor=|new3|const char *,int

/*
QByteArrayMatcher ( const QByteArrayMatcher & other )
*/
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

/*
int indexIn ( const QByteArray & ba, int from = 0 ) const
*/
$internalMethod=|int|indexIn,indexIn1|const QByteArray &,int=0

/*
int indexIn ( const char * str, int len, int from = 0 ) const
*/
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

/*
QByteArray pattern () const
*/
$method=|QByteArray|pattern|

/*
void setPattern ( const QByteArray & pattern )
*/
$method=|void|setPattern|const QByteArray &

$extraMethods

#pragma ENDDUMP
