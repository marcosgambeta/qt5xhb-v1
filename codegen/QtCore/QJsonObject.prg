%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD contains
   METHOD count
   METHOD empty
   METHOD isEmpty
   METHOD keys
   METHOD length
   METHOD remove
   METHOD size
   METHOD take
   METHOD value

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QJsonObject()
$internalConstructor=|new1|

$prototype=QJsonObject(const QJsonObject & other)
$internalConstructor=|new2|const QJsonObject &

//[1]QJsonObject()
//[2]QJsonObject(const QJsonObject & other)

HB_FUNC_STATIC( QJSONOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonObject_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool contains(const QString & key) const
$method=|bool|contains|const QString &

$prototype=int count() const
$method=|int|count|

$prototype=bool empty() const
$method=|bool|empty|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QStringList keys() const
$method=|QStringList|keys|

$prototype=int length() const
$method=|int|length|

$prototype=void remove(const QString & key)
$method=|void|remove|const QString &

$prototype=int size() const
$method=|int|size|

$prototype=QJsonValue take(const QString & key)
$method=|QJsonValue|take|const QString &

$prototype=QJsonValue value(const QString & key) const
$method=|QJsonValue|value|const QString &

$extraMethods

#pragma ENDDUMP
