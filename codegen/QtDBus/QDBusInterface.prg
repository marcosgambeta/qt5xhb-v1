$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QDBusInterface INHERIT QDBusAbstractInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD metaObject
   METHOD qt_metacast
   METHOD qt_metacall

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusInterface(const QString &service, const QString &path, const QString &interface = QString(),const QDBusConnection &connection = QDBusConnection::sessionBus(),QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_NEW ) // TODO: corrigir parametro 4
{
  QDBusInterface * o = new QDBusInterface ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()), par4, OPQOBJECT(5,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual const QMetaObject *metaObject() const
*/
HB_FUNC_STATIC( QDBUSINTERFACE_METAOBJECT )
{
  QDBusInterface * obj = (QDBusInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->metaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
virtual void * qt_metacast ( const char * )
*/
HB_FUNC_STATIC( QDBUSINTERFACE_QT_METACAST )
{
  QDBusInterface * obj = (QDBusInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->qt_metacast ( PCONSTCHAR(1) ) );
  }
}


/*
virtual int qt_metacall(QMetaObject::Call, int, void **)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_QT_METACALL )
{
  QDBusInterface * obj = (QDBusInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->qt_metacall ( (QMetaObject::Call) hb_parni(1), PINT(2), par3 ) ); // TODO: parametro 3
  }
}



#pragma ENDDUMP
