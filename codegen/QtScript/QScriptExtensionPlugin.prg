/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QScriptExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptExtensionPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptExtensionPlugin>
#endif

#include <QScriptValue>


HB_FUNC_STATIC( QSCRIPTEXTENSIONPLUGIN_DELETE )
{
  QScriptExtensionPlugin * obj = (QScriptExtensionPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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