%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QPlaceUser

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD userId
   METHOD setUserId
   METHOD name
   METHOD setName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceUser()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceUser(const QPlaceUser &other)
$internalConstructor=5,4,0|new2|const QPlaceUser &

//[1]QPlaceUser()
//[2]QPlaceUser(const QPlaceUser &other)

HB_FUNC_STATIC( QPLACEUSER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceUser_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEUSER(1) )
  {
    QPlaceUser_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QString userId() const
$method=5,4,0|QString|userId|

$prototype=void setUserId(const QString &identifier)
$method=5,4,0|void|setUserId|const QString &

$prototype=QString name() const
$method=5,4,0|QString|name|

$prototype=void setName(const QString &name)
$method=5,4,0|void|setName|const QString &

$extraMethods

#pragma ENDDUMP
