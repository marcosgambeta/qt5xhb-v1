$header

#include "hbclass.ch"

CLASS QDBusVirtualObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD introspect
   METHOD handleMessage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDBusVirtualObject(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_NEW )
{
  QDBusVirtualObject * o = new QDBusVirtualObject ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


$deleteMethod

/*
virtual QString introspect(const QString &path) const = 0
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_INTROSPECT )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->introspect ( PQSTRING(1) ) );
  }
}


/*
virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_HANDLEMESSAGE )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->handleMessage ( *PQDBUSMESSAGE(1), par2 ) ); // TODO: implementar parametro 2
  }
}



#pragma ENDDUMP
