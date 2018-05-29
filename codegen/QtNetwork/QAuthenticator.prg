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

   METHOD detach
   METHOD isNull
   METHOD option
%%   METHOD options
   METHOD password
   METHOD realm
   METHOD setOption
   METHOD setPassword
   METHOD setRealm
   METHOD setUser
   METHOD user

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAuthenticator ()
$internalConstructor=|new1|

$prototype=QAuthenticator ( const QAuthenticator & other )
$internalConstructor=|new2|const QAuthenticator &

//[1]QAuthenticator ()
//[2]QAuthenticator ( const QAuthenticator & other )

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAuthenticator_new1();
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    QAuthenticator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAuthenticator()
$deleteMethod

$prototype=QString user() const
$method=|QString|user|

$prototype=void setUser(const QString &user)
$method=|void|setUser|const QString &

$prototype=QString password() const
$method=|QString|password|

$prototype=void setPassword(const QString &password)
$method=|void|setPassword|const QString &

$prototype=QString realm() const
$method=|QString|realm|

$prototype=void setRealm(const QString &realm)
%% TODO: check method and Qt version
$method=5,3,0|void|setRealm|const QString &

$prototype=QVariant option(const QString &opt) const
$method=|QVariant|option|const QString &

$prototype=QVariantHash options() const
%% TODO: implementar
%% $method=|QVariantHash|options|

$prototype=void setOption(const QString &opt, const QVariant &value)
$method=|void|setOption|const QString &,const QVariant &

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=void detach()
$method=|void|detach|

$extraMethods

#pragma ENDDUMP
