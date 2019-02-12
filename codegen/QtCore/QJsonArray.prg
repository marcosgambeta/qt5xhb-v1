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

#include <QtCore/QVariantList>
#include <QtCore/QStringList>

$prototype=QJsonArray()
$internalConstructor=|new1|

$prototype=QJsonArray(const QJsonArray & other)
$internalConstructor=|new2|const QJsonArray &

//[1]QJsonArray()
//[2]QJsonArray(const QJsonArray & other)

HB_FUNC_STATIC( QJSONARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonArray_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonArray_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void append(const QJsonValue & value)
$method=|void|append|const QJsonValue &

$prototype=QJsonValue at(int i) const
$method=|QJsonValue|at|int

$prototype=bool contains(const QJsonValue & value) const
$method=|bool|contains|const QJsonValue &

$prototype=int count() const
$method=|int|count|

$prototype=bool empty() const
$method=|bool|empty|

$prototype=QJsonValue first() const
$method=|QJsonValue|first|

$prototype=void insert(int i, const QJsonValue & value)
$method=|void|insert|int,const QJsonValue &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QJsonValue last() const
$method=|QJsonValue|last|

$prototype=void pop_back()
$method=|void|pop_back|

$prototype=void pop_front()
$method=|void|pop_front|

$prototype=void prepend(const QJsonValue & value)
$method=|void|prepend|const QJsonValue &

$prototype=void push_back(const QJsonValue & value)
$method=|void|push_back|const QJsonValue &

$prototype=void push_front(const QJsonValue & value)
$method=|void|push_front|const QJsonValue &

$prototype=void removeAt(int i)
$method=|void|removeAt|int

$prototype=void removeFirst()
$method=|void|removeFirst|

$prototype=void removeLast()
$method=|void|removeLast|

$prototype=void replace(int i, const QJsonValue & value)
$method=|void|replace|int,const QJsonValue &

$prototype=int size() const
$method=|int|size|

$prototype=QJsonValue takeAt(int i)
$method=|QJsonValue|takeAt|int

$prototype=QVariantList toVariantList() const
$method=|QVariantList|toVariantList|

$prototype=static QJsonArray fromStringList(const QStringList & list)
$staticMethod=|QJsonArray|fromStringList|const QStringList &

$prototype=static QJsonArray fromVariantList(const QVariantList & list)
$staticMethod=|QJsonArray|fromVariantList|const QVariantList &

$extraMethods

#pragma ENDDUMP
