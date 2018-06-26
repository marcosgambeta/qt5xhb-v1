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
   METHOD isNull
   METHOD toByteArray
   METHOD toRfc4122
   METHOD toString
   METHOD variant
   METHOD version
   METHOD createUuidV3
   METHOD createUuidV5
   METHOD fromRfc4122

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QUuid()
$internalConstructor=|new1|

$prototype=QUuid(const QByteArray & text)
$internalConstructor=|new2|const QByteArray &

$prototype=QUuid(const GUID & guid)
$internalConstructor=|new3|const GUID &

//[1]QUuid()
//[2]QUuid(const QByteArray & text)
//[3]QUuid(const GUID & guid) // TODO: implementar metodo

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUuid_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUuid_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QByteArray toByteArray() const
$method=|QByteArray|toByteArray|

$prototype=QByteArray toRfc4122() const
$method=|QByteArray|toRfc4122|

$prototype=QString toString() const
$method=|QString|toString|

$prototype=QUuid::Variant variant() const
$method=|QUuid::Variant|variant|

$prototype=QUuid::Version version() const
$method=|QUuid::Version|version|

$prototype=static QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
$internalStaticMethod=|QUuid|createUuidV3,createUuidV31|const QUuid &,const QByteArray &

$prototype=static QUuid createUuidV3(const QUuid & ns, const QString & baseData)
$internalStaticMethod=|QUuid|createUuidV3,createUuidV32|const QUuid &,const QString &

//[1]QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
//[2]QUuid createUuidV3(const QUuid & ns, const QString & baseData)

HB_FUNC_STATIC( QUUID_CREATEUUIDV3 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    QUuid_createUuidV31();
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    QUuid_createUuidV32();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
$internalStaticMethod=|QUuid|createUuidV5,createUuidV51|const QUuid &,const QByteArray &

$prototype=static QUuid createUuidV5(const QUuid & ns, const QString & baseData)
$internalStaticMethod=|QUuid|createUuidV5,createUuidV52|const QUuid &,const QString &

//[1]QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
//[2]QUuid createUuidV5(const QUuid & ns, const QString & baseData)

HB_FUNC_STATIC( QUUID_CREATEUUIDV5 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    QUuid_createUuidV51();
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    QUuid_createUuidV52();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QUuid fromRfc4122(const QByteArray & bytes)
$staticMethod=|QUuid|fromRfc4122|const QByteArray &

$extraMethods

#pragma ENDDUMP
