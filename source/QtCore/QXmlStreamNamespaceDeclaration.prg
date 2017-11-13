/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamNamespaceDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD namespaceUri
   METHOD prefix

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamNamespaceDeclaration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlStreamNamespaceDeclaration>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlStreamNamespaceDeclaration>
#endif

/*
QXmlStreamNamespaceDeclaration()
*/
void QXmlStreamNamespaceDeclaration_new1 ()
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
*/
void QXmlStreamNamespaceDeclaration_new2 ()
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ( *PQXMLSTREAMNAMESPACEDECLARATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)
*/
void QXmlStreamNamespaceDeclaration_new3 ()
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ( PQSTRING(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamNamespaceDeclaration()
//[2]QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
//[3]QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamNamespaceDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNAMESPACEDECLARATION(1) )
  {
    QXmlStreamNamespaceDeclaration_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamNamespaceDeclaration_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_DELETE )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NAMESPACEURI )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_PREFIX )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_SETSELFDESTRUCTION )
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
