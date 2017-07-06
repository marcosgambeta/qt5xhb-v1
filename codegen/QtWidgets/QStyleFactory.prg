$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

CLASS QStyleFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

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

$deleteMethod

/*
static QStyle * create(const QString & key)
*/
HB_FUNC_STATIC( QSTYLEFACTORY_CREATE )
{
  QStyle * ptr = QStyleFactory::create ( PQSTRING(1) );
  _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
}


/*
static QStringList keys()
*/
HB_FUNC_STATIC( QSTYLEFACTORY_KEYS )
{
  RQSTRINGLIST( QStyleFactory::keys () );
}

$extraMethods

#pragma ENDDUMP
