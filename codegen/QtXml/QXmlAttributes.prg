$header

#include "hbclass.ch"

CLASS QXmlAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index1
   METHOD index3
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type1
   METHOD type2
   METHOD type3
   METHOD type
   METHOD uri
   METHOD value1
   METHOD value2
   METHOD value4
   METHOD value

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
QXmlAttributes ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_NEW )
{
  QXmlAttributes * o = new QXmlAttributes ();
  _qt5xhb_storePointerAndFlag( o, true );
}

$deleteMethod

/*
void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_APPEND )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_CLEAR )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_COUNT )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
int index ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->index ( PQSTRING(1) ) );
  }
}

/*
int index ( const QString & uri, const QString & localPart ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->index ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]int index ( const QString & qName ) const
//[2]int index ( const QLatin1String & qName ) const
//[3]int index ( const QString & uri, const QString & localPart ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX1 );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX2 );
  //}
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int length () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LENGTH )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->length () );
  }
}


/*
QString localName ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LOCALNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->localName ( PINT(1) ) );
  }
}


/*
QString qName ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_QNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->qName ( PINT(1) ) );
  }
}


/*
QString type ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->type ( PINT(1) ) );
  }
}

/*
QString type ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->type ( PQSTRING(1) ) );
  }
}

/*
QString type ( const QString & uri, const QString & localName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->type ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]QString type ( int index ) const
//[2]QString type ( const QString & qName ) const
//[3]QString type ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString uri ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_URI )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->uri ( PINT(1) ) );
  }
}


/*
QString value ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->value ( PINT(1) ) );
  }
}

/*
QString value ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->value ( PQSTRING(1) ) );
  }
}

/*
QString value ( const QString & uri, const QString & localName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE4 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->value ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]QString value ( int index ) const
//[2]QString value ( const QString & qName ) const
//[3]QString value ( const QLatin1String & qName ) const
//[4]QString value ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE2 );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE3 );
  //}
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


$extraMethods

#pragma ENDDUMP
