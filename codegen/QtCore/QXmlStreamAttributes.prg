$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD hasAttribute
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
QXmlStreamAttributes()
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamAttributes * o = new QXmlStreamAttributes ();
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
void QXmlStreamAttributes_append1 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QXmlStreamAttribute & attribute)
*/
void QXmlStreamAttributes_append2 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->append ( *PQXMLSTREAMATTRIBUTE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QString & qualifiedName, const QString & value)
*/
void QXmlStreamAttributes_append3 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void append(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void append(const QXmlStreamAttribute & attribute)
//[3]void append(const QString & qualifiedName, const QString & value)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamAttributes_append1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    QXmlStreamAttributes_append2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttributes_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasAttribute(const QString & qualifiedName) const
*/
void QXmlStreamAttributes_hasAttribute1 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasAttribute ( PQSTRING(1) ) );
  }
}

/*
bool hasAttribute(QLatin1String qualifiedName) const
*/
void QXmlStreamAttributes_hasAttribute2 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->hasAttribute ( *par1 ) );
  }
}

/*
bool hasAttribute(const QString & namespaceUri, const QString & name) const
*/
void QXmlStreamAttributes_hasAttribute3 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasAttribute ( PQSTRING(1), PQSTRING(2) ) );
  }
}

//[1]bool hasAttribute(const QString & qualifiedName) const
//[2]bool hasAttribute(QLatin1String qualifiedName) const
//[3]bool hasAttribute(const QString & namespaceUri, const QString & name) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamAttributes_hasAttribute1();
  }
  //else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QXmlStreamAttributes_hasAttribute2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttributes_hasAttribute3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringRef value(const QString & namespaceUri, const QString & name) const
*/
void QXmlStreamAttributes_value1 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value ( PQSTRING(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(const QString & namespaceUri, QLatin1String name) const
*/
void QXmlStreamAttributes_value2 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLatin1String * par2 = (QLatin1String *) _qt5xhb_itemGetPtr(2);
    QStringRef * ptr = new QStringRef( obj->value ( PQSTRING(1), *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
*/
void QXmlStreamAttributes_value3 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
    QLatin1String * par2 = (QLatin1String *) _qt5xhb_itemGetPtr(2);
    QStringRef * ptr = new QStringRef( obj->value ( *par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(const QString & qualifiedName) const
*/
void QXmlStreamAttributes_value4 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value(QLatin1String qualifiedName) const
*/
void QXmlStreamAttributes_value5 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
    QStringRef * ptr = new QStringRef( obj->value ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

//[1]QStringRef value(const QString & namespaceUri, const QString & name) const
//[2]QStringRef value(const QString & namespaceUri, QLatin1String name) const
//[3]QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
//[4]QStringRef value(const QString & qualifiedName) const
//[5]QStringRef value(QLatin1String qualifiedName) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttributes_value1();
  }
  //else if( ISNUMPAR(2) && ISCHAR(1) && ISQLATIN1STRING(2) )
  else if( ISNUMPAR(2) && ISCHAR(1) && ISOBJECT(2) )
  {
    QXmlStreamAttributes_value2();
  }
  //else if( ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2) )
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISOBJECT(2) )
  {
    QXmlStreamAttributes_value3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamAttributes_value4();
  }
  //else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QXmlStreamAttributes_value5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
