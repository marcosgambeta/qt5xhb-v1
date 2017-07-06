$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptExtensionPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptValue>

$deleteMethod

/*
QScriptValue setupPackage(const QString & key, QScriptEngine * engine) const
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_SETUPPACKAGE )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * par2 = (QScriptEngine *) _qt5xhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->setupPackage ( PQSTRING(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual void initialize(const QString & key, QScriptEngine * engine) = 0
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_INITIALIZE )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * par2 = ISNIL(2)? 0 : (QScriptEngine *) _qt5xhb_itemGetPtr(2);
    obj->initialize ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList keys() const = 0
*/
HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_KEYS )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}



#pragma ENDDUMP
