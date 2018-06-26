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

   METHOD expiry
   METHOD host
   METHOD includesSubDomains
   METHOD isExpired
   METHOD setExpiry
   METHOD setHost
   METHOD setIncludesSubDomains
   METHOD swap

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,9,0

#include <QDateTime>

$prototype=QHstsPolicy()
$internalConstructor=5,9,0|new1|

$prototype=QHstsPolicy(const QDateTime &expiry, PolicyFlags flags, const QString &host, QUrl::ParsingMode mode = QUrl::DecodedMode)
$internalConstructor=5,9,0|new2|const QDateTime &,QHstsPolicy::PolicyFlags,const QString &,QUrl::ParsingMode=QUrl::DecodedMode

$prototype=QHstsPolicy(const QHstsPolicy &rhs)
$internalConstructor=5,9,0|new3|const QHstsPolicy &

//[1]QHstsPolicy()
//[2]QHstsPolicy(const QDateTime &expiry, PolicyFlags flags, const QString &host, QUrl::ParsingMode mode = QUrl::DecodedMode)
//[3]QHstsPolicy(const QHstsPolicy &rhs)

HB_FUNC_STATIC( QHSTSPOLICY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHstsPolicy_new1();
  }
  else if( ISBETWEEN(3,4) && ISQDATETIME(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QHstsPolicy_new2();
  }
  else if( ISNUMPAR(1) && ISQHSTSPOLICY(1) )
  {
    QHstsPolicy_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QHstsPolicy()
$deleteMethod=5,9,0

$prototype=void swap(QHstsPolicy &other) Q_DECL_NOTHROW
$method=5,9,0|void|swap|QHstsPolicy &

$prototype=void setHost(const QString &host, QUrl::ParsingMode mode = QUrl::DecodedMode)
$method=5,9,0|void|setHost|const QString &,QUrl::ParsingMode=QUrl::DecodedMode

$prototype=QString host(QUrl::ComponentFormattingOptions options = QUrl::FullyDecoded) const
$method=5,9,0|QString|host|QUrl::ComponentFormattingOptions=QUrl::FullyDecoded

$prototype=void setExpiry(const QDateTime &expiry)
$method=5,9,0|void|setExpiry|const QDateTime &

$prototype=QDateTime expiry() const
$method=5,9,0|QDateTime|expiry|

$prototype=void setIncludesSubDomains(bool include)
$method=5,9,0|void|setIncludesSubDomains|bool

$prototype=bool includesSubDomains() const
$method=5,9,0|bool|includesSubDomains|

$prototype=bool isExpired() const
$method=5,9,0|bool|isExpired|

$extraMethods

#pragma ENDDUMP
