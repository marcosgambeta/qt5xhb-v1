/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttributes

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamAttributes
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QXmlStreamAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlStreamAttributes>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlStreamAttributes>
#endif

/*
QXmlStreamAttributes()
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamAttributes * o = new QXmlStreamAttributes (  );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_DELETE )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
void QXmlStreamAttributes_append1 ()
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    obj->append ( par1, par2, par3 );
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
    QXmlStreamAttribute * par1 = (QXmlStreamAttribute *) _qt5xhb_itemGetPtr(1);
    obj->append ( *par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->append ( par1, par2 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasAttribute ( par1 ) );
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
    hb_retl( obj->hasAttribute ( *par1 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->hasAttribute ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QStringRef * ptr = new QStringRef( obj->value ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QLatin1String * par2 = (QLatin1String *) _qt5xhb_itemGetPtr(2);
    QStringRef * ptr = new QStringRef( obj->value ( par1, *par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QStringRef * ptr = new QStringRef( obj->value ( par1 ) );
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

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_SETSELFDESTRUCTION )
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
