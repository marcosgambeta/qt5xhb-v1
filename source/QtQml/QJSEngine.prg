/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QJSVALUE
#endif

CLASS QJSEngine INHERIT QObject

   DATA class_id INIT Class_Id_QJSEngine
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD collectGarbage
   METHOD evaluate
   METHOD globalObject
   METHOD newArray
   METHOD newObject
   METHOD newQObject
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QJSEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QJSEngine>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QJSEngine>
#endif
#endif

/*
QJSEngine()
*/
HB_FUNC_STATIC( QJSENGINE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJSEngine * o = new QJSEngine (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSEngine(QObject * parent)
*/
HB_FUNC_STATIC( QJSENGINE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QJSEngine * o = new QJSEngine ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QJSEngine()
//[2]QJSEngine(QObject * parent)

HB_FUNC_STATIC( QJSENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QJSENGINE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QJSENGINE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJSEngine * obj = (QJSEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
void collectGarbage()
*/
HB_FUNC_STATIC( QJSENGINE_COLLECTGARBAGE )
{
  QJSEngine * obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->collectGarbage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QJSValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
HB_FUNC_STATIC( QJSENGINE_EVALUATE )
{
  QJSEngine * obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QJSValue * ptr = new QJSValue( obj->evaluate ( par1, par2, (int) ISNIL(3)? 1 : hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}



/*
QJSValue globalObject() const
*/
HB_FUNC_STATIC( QJSENGINE_GLOBALOBJECT )
{
  QJSEngine * obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->globalObject (  ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}


/*
QJSValue newArray(uint length = 0)
*/
HB_FUNC_STATIC( QJSENGINE_NEWARRAY )
{
  QJSEngine * obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->newArray ( (uint) ISNIL(1)? 0 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}


/*
QJSValue newObject()
*/
HB_FUNC_STATIC( QJSENGINE_NEWOBJECT )
{
  QJSEngine * obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->newObject (  ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}


/*
QJSValue newQObject(QObject * object)
*/
HB_FUNC_STATIC( QJSENGINE_NEWQOBJECT )
{
  QJSEngine * obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QJSValue * ptr = new QJSValue( obj->newQObject ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}




#pragma ENDDUMP
