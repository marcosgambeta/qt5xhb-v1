%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QStringMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn
   METHOD pattern
   METHOD caseSensitivity

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

$prototype=QStringMatcher()
$internalConstructor=|new1|

$prototype=QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
$internalConstructor=|new2|const QString &,Qt::CaseSensitivity=Qt::CaseSensitive

$prototype=QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
$internalConstructor=|new3|const QChar *,int,Qt::CaseSensitivity=Qt::CaseSensitive

$prototype=QStringMatcher(const QStringMatcher &other)
$internalConstructor=|new4|const QStringMatcher &

//QStringMatcher()
//QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QStringMatcher &other)

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStringMatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QStringMatcher_new2();
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QStringMatcher_new3();
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    QStringMatcher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setPattern(const QString &pattern)
$method=|void|setPattern|const QString &

$prototype=void setCaseSensitivity(Qt::CaseSensitivity cs)
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=int indexIn(const QString &str, int from = 0) const
$internalMethod=|int|indexIn,indexIn1|const QString &,int=0

$prototype=int indexIn(const QChar *str, int length, int from = 0) const
$internalMethod=|int|indexIn,indexIn2|const QChar *,int,int=0

//[1]int indexIn(const QString &str, int from = 0) const
//[2]int indexIn(const QChar *str, int length, int from = 0) const

HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QStringMatcher_indexIn1();
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QStringMatcher_indexIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString pattern() const
$method=|QString|pattern|

$prototype=Qt::CaseSensitivity caseSensitivity() const
$method=|Qt::CaseSensitivity|caseSensitivity|

$extraMethods

#pragma ENDDUMP
