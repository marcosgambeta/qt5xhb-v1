$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD name
   METHOD namespaceUri
   METHOD prefix
   METHOD qualifiedName
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
QXmlStreamAttribute()
*/
void QXmlStreamAttribute_new1 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
*/
void QXmlStreamAttribute_new2 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( PQSTRING(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
void QXmlStreamAttribute_new3 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamAttribute(const QXmlStreamAttribute & other)
*/
void QXmlStreamAttribute_new4 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( *PQXMLSTREAMATTRIBUTE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamAttribute()
//[2]QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
//[3]QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[4]QXmlStreamAttribute(const QXmlStreamAttribute & other)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamAttribute_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttribute_new2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamAttribute_new3();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTES(1) )
  {
    QXmlStreamAttribute_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isDefault() const
*/
$method=|bool|isDefault|

/*
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NAME )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NAMESPACEURI )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_PREFIX )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef qualifiedName() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_QUALIFIEDNAME )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->qualifiedName () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_VALUE )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
