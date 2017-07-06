$header

#include "hbclass.ch"

CLASS QDBusAbstractAdaptor INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusAbstractAdaptor(QObject *parent)
*/
HB_FUNC_STATIC( QDBUSABSTRACTADAPTOR_NEW )
{
  QDBusAbstractAdaptor * o = new QDBusAbstractAdaptor ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
