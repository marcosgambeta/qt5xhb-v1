/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QVARIANT
#endif

CLASS QQmlProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD connectNotifySignal1
   METHOD connectNotifySignal2
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD read1
   METHOD read2
   METHOD read3
   METHOD read4
   METHOD read
   METHOD reset
   METHOD type
   METHOD write1
   METHOD write2
   METHOD write3
   METHOD write4
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlProperty>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlProperty>
#endif

/*
QQmlProperty()
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW1 )
{
  QQmlProperty * o = new QQmlProperty ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(QObject * obj)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW2 )
{
  QQmlProperty * o = new QQmlProperty ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(QObject * obj, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW3 )
{
  QQmlContext * par2 = (QQmlContext *) _qt5xhb_itemGetPtr(2);
  QQmlProperty * o = new QQmlProperty ( PQOBJECT(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(QObject * obj, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW4 )
{
  QQmlEngine * par2 = (QQmlEngine *) _qt5xhb_itemGetPtr(2);
  QQmlProperty * o = new QQmlProperty ( PQOBJECT(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(QObject * obj, const QString & name)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW5 )
{
  QQmlProperty * o = new QQmlProperty ( PQOBJECT(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW6 )
{
  QQmlContext * par3 = (QQmlContext *) _qt5xhb_itemGetPtr(3);
  QQmlProperty * o = new QQmlProperty ( PQOBJECT(1), PQSTRING(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW7 )
{
  QQmlEngine * par3 = (QQmlEngine *) _qt5xhb_itemGetPtr(3);
  QQmlProperty * o = new QQmlProperty ( PQOBJECT(1), PQSTRING(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlProperty(const QQmlProperty & other)
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEW8 )
{
  QQmlProperty * o = new QQmlProperty ( *PQQMLPROPERTY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QQmlProperty()
//[2]QQmlProperty(QObject * obj)
//[3]QQmlProperty(QObject * obj, QQmlContext * ctxt)
//[4]QQmlProperty(QObject * obj, QQmlEngine * engine)
//[5]QQmlProperty(QObject * obj, const QString & name)
//[6]QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
//[7]QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
//[8]QQmlProperty(const QQmlProperty & other)

HB_FUNC_STATIC( QQMLPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLCONTEXT(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLENGINE(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW4 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW6 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQQMLPROPERTY(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLPROPERTY_DELETE )
{
  QQmlProperty * obj = (QQmlProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool connectNotifySignal(QObject * dest, const char * slot) const
*/
HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL1 )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->connectNotifySignal ( PQOBJECT(1), PCONSTCHAR(2) ) );
  }
}

/*
bool connectNotifySignal(QObject * dest, int method) const
*/
HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL2 )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->connectNotifySignal ( PQOBJECT(1), PINT(2) ) );
  }
}


//[1]bool connectNotifySignal(QObject * dest, const char * slot) const
//[2]bool connectNotifySignal(QObject * dest, int method) const

HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_HASNOTIFYSIGNAL )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasNotifySignal () );
  }
}


/*
int index() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_INDEX )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->index () );
  }
}


/*
bool isDesignable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISDESIGNABLE )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDesignable () );
  }
}


/*
bool isProperty() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISPROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isProperty () );
  }
}


/*
bool isResettable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISRESETTABLE )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isResettable () );
  }
}


/*
bool isSignalProperty() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISSIGNALPROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSignalProperty () );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISVALID )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
bool isWritable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISWRITABLE )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isWritable () );
  }
}


/*
QMetaMethod method() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_METHOD )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->method () );
    _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_NAME )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
}


/*
bool needsNotifySignal() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->needsNotifySignal () );
  }
}


/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_OBJECT )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QMetaProperty property() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->property () );
    _qt5xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}


/*
int propertyType() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPE )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->propertyType () );
  }
}


/*
PropertyTypeCategory propertyTypeCategory() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPECATEGORY )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyTypeCategory () );
  }
}


/*
const char * propertyTypeName() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPENAME )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->propertyTypeName ();
    hb_retc( str1 );
  }
}


/*
QVariant read() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ1 )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->read () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
static QVariant read(QObject * object, const QString & name)
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ2 )
{
  QVariant * ptr = new QVariant( QQmlProperty::read ( PQOBJECT(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
}

/*
static QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ3 )
{
  QQmlContext * par3 = (QQmlContext *) _qt5xhb_itemGetPtr(3);
  QVariant * ptr = new QVariant( QQmlProperty::read ( PQOBJECT(1), PQSTRING(2), par3 ) );
  _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
}

/*
static QVariant read(QObject * object, const QString & name, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_READ4 )
{
  QQmlEngine * par3 = (QQmlEngine *) _qt5xhb_itemGetPtr(3);
  QVariant * ptr = new QVariant( QQmlProperty::read ( PQOBJECT(1), PQSTRING(2), par3 ) );
  _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
}


//[1]QVariant read() const
//[2]QVariant read(QObject * object, const QString & name)
//[3]QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
//[4]QVariant read(QObject * object, const QString & name, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ2 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ3 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool reset() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_RESET )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->reset () );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_TYPE )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
bool write(const QVariant & value) const
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE1 )
{
  QQmlProperty * obj = (QQmlProperty *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->write ( *PQVARIANT(1) ) );
  }
}

/*
static bool write(QObject * object, const QString & name, const QVariant & value)
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE2 )
{
  RBOOL( QQmlProperty::write ( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3) ) );
}

/*
static bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE3 )
{
  QQmlContext * par4 = (QQmlContext *) _qt5xhb_itemGetPtr(4);
  RBOOL( QQmlProperty::write ( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), par4 ) );
}

/*
static bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)
*/
HB_FUNC_STATIC( QQMLPROPERTY_WRITE4 )
{
  QQmlEngine * par4 = (QQmlEngine *) _qt5xhb_itemGetPtr(4);
  RBOOL( QQmlProperty::write ( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), par4 ) );
}


//[1]bool write(const QVariant & value) const
//[2]bool write(QObject * object, const QString & name, const QVariant & value)
//[3]bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
//[4]bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE2 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLCONTEXT(4) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE3 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLENGINE(4) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QQMLPROPERTY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QQMLPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLPROPERTY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
