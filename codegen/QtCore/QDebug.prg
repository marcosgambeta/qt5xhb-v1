%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDebug

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD space
   METHOD nospace
   METHOD maybeSpace
   METHOD autoInsertSpaces
   METHOD setAutoInsertSpaces

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

$prototype=QDebug(QIODevice *device)
$internalConstructor=|new1|QIODevice *

$prototype=QDebug(QString *string)
%% TODO: implementar
$internalConstructor=|new2|

$prototype=QDebug(QtMsgType t)
$internalConstructor=|new3|QtMsgType

$prototype=QDebug(const QDebug &o)
$internalConstructor=|new4|const QDebug &

//[1]QDebug(QIODevice *device)
//[2]QDebug(QString *string)
//[3]QDebug(QtMsgType t)
//[4]QDebug(const QDebug &o)

HB_FUNC_STATIC( QDEBUG_NEW )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDebug_new1();
  }
  else if( ISNUMPAR(1) && ISQSTRING(1) )
  {
    QDebug_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDebug_new3();
  }
  else if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    QDebug_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QDebug &other)
$method=|void|swap|QDebug &

$prototype=QDebug &space()
$method=|QDebug &|space|

$prototype=QDebug &nospace()
$method=|QDebug &|nospace|

$prototype=QDebug &maybeSpace()
$method=|QDebug &|maybeSpace|

$prototype=bool autoInsertSpaces() const
$method=|bool|autoInsertSpaces|

$prototype=void setAutoInsertSpaces(bool b)
$method=|void|setAutoInsertSpaces|bool

$extraMethods

#pragma ENDDUMP
