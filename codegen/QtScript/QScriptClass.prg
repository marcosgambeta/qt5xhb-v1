$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClass

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD extension
   METHOD name
   METHOD newIterator
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD queryProperty
   METHOD setProperty
   METHOD supportsExtension

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

/*
QScriptClass(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEW )
{
  QScriptClass * o = new QScriptClass ( PQSCRIPTENGINE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_ENGINE )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
*/
HB_FUNC_STATIC( QSCRIPTCLASS_EXTENSION )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->extension ( (QScriptClass::Extension) hb_parni(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QString name() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NAME )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
virtual QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEWITERATOR )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptClassPropertyIterator * ptr = obj->newIterator ( *PQSCRIPTVALUE(1) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCLASSPROPERTYITERATOR" );
  }
}


/*
virtual QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->property ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (uint) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTYFLAGS )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyFlags ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (uint) hb_parni(3) ) );
  }
}


/*
virtual QScriptValue prototype() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROTOTYPE )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QueryFlags queryProperty(const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_QUERYPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = hb_parni(3);
    uint * par4 = (uint *) _qt5xhb_itemGetPtr(4);
    hb_retni( obj->queryProperty ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (QScriptClass::QueryFlags) par3, par4 ) );
  }
}


/*
virtual void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SETPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProperty ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (uint) hb_parni(3), *PQSCRIPTVALUE(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsExtension(Extension extension) const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SUPPORTSEXTENSION )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QScriptClass::Extension) hb_parni(1) ) );
  }
}



$extraMethods

#pragma ENDDUMP
