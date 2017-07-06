$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusArgument

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD beginStructure
   METHOD endStructure
   METHOD beginArray1
   METHOD beginArray2
   METHOD beginArray
   METHOD endArray
   METHOD beginMap1
   METHOD beginMap2
   METHOD beginMap
   METHOD endMap
   METHOD beginMapEntry
   METHOD endMapEntry
   METHOD appendVariant
   METHOD currentSignature
   METHOD currentType
   METHOD atEnd
   METHOD asVariant

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
QDBusArgument()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_NEW1 )
{
  QDBusArgument * o = new QDBusArgument ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusArgument(const QDBusArgument &other)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_NEW2 )
{
  QDBusArgument * o = new QDBusArgument ();
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusArgument()
//[2]QDBusArgument(const QDBusArgument &other)

HB_FUNC_STATIC( QDBUSARGUMENT_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
void beginStructure()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINSTRUCTURE )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginStructure ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void endStructure()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDSTRUCTURE )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endStructure ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void beginArray(int elementMetaTypeId)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY1 )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginArray ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void beginArray() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY2 )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginArray ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void beginArray(int elementMetaTypeId)
//[2]void beginArray() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY )
{
  // TODO: implementar
}

/*
void endArray()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDARRAY )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endArray ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void beginMap(int keyMetaTypeId, int valueMetaTypeId)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP1 )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginMap ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void beginMap() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP2 )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginMap ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void beginMap(int keyMetaTypeId, int valueMetaTypeId)
//[2]void beginMap() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP )
{
  // TODO: implementar
}

/*
void endMap()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDMAP )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endMap ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void beginMapEntry()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAPENTRY )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginMapEntry ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void endMapEntry()
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ENDMAPENTRY )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endMapEntry ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void appendVariant(const QVariant &v)
*/
HB_FUNC_STATIC( QDBUSARGUMENT_APPENDVARIANT )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->appendVariant ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString currentSignature() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_CURRENTSIGNATURE )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->currentSignature () );
  }
}


/*
ElementType currentType() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_CURRENTTYPE )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentType () );
  }
}


/*
bool atEnd() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ATEND )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}


/*
QVariant asVariant() const
*/
HB_FUNC_STATIC( QDBUSARGUMENT_ASVARIANT )
{
  QDBusArgument * obj = (QDBusArgument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->asVariant () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

$extraMethods

#pragma ENDDUMP
