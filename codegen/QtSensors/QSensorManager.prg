%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORBACKEND
#endif

$beginClass

   METHOD delete
   METHOD registerBackend
   METHOD unregisterBackend
   METHOD isBackendRegistered
   METHOD createBackend
   METHOD setDefaultBackend

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=static void registerBackend(const QByteArray &type, const QByteArray &identifier, QSensorBackendFactory *factory)
HB_FUNC_STATIC( QSENSORMANAGER_REGISTERBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackendFactory * par3 = (QSensorBackendFactory *) _qt5xhb_itemGetPtr(3);
  QSensorManager::registerBackend ( *PQBYTEARRAY(1), *PQBYTEARRAY(2), par3 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void unregisterBackend(const QByteArray &type, const QByteArray &identifier)
HB_FUNC_STATIC( QSENSORMANAGER_UNREGISTERBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorManager::unregisterBackend ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static bool isBackendRegistered(const QByteArray &type, const QByteArray &identifier)
HB_FUNC_STATIC( QSENSORMANAGER_ISBACKENDREGISTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  RBOOL( QSensorManager::isBackendRegistered ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) ) );
#endif
}

$prototype=static QSensorBackend *createBackend(QSensor *sensor)
HB_FUNC_STATIC( QSENSORMANAGER_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * par1 = (QSensor *) _qt5xhb_itemGetPtr(1);
  QSensorBackend * ptr = QSensorManager::createBackend ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QSENSORBACKEND" );
#endif
}

$prototype=static void setDefaultBackend(const QByteArray &type, const QByteArray &identifier)
HB_FUNC_STATIC( QSENSORMANAGER_SETDEFAULTBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorManager::setDefaultBackend ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$extraMethods

#pragma ENDDUMP
