/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
REQUEST QSOURCELOCATION
REQUEST QVARIANT
#endif

CLASS QAbstractXmlNodeModel INHERIT QSharedData

   DATA class_id INIT Class_Id_QAbstractXmlNodeModel
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD baseUri
   METHOD compareOrder
   METHOD documentUri
   METHOD elementById
   METHOD kind
   METHOD name
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD root
   METHOD sourceLocation
   METHOD stringValue
   METHOD typedValue
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractXmlNodeModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractXmlNodeModel>
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
#include <QAbstractXmlNodeModel>
#endif
#endif

#include <QVariant>
#include <QUrl>
#include <QVector>
#include <QSourceLocation>


HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUrl baseUri ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_BASEURI )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->baseUri ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QXmlNodeModelIndex::DocumentOrder compareOrder ( const QXmlNodeModelIndex & ni1, const QXmlNodeModelIndex & ni2 ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_COMPAREORDER )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QXmlNodeModelIndex * par2 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(2);
    hb_retni( obj->compareOrder ( *par1, *par2 ) );
  }
}


/*
virtual QUrl documentUri ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_DOCUMENTURI )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->documentUri ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_ELEMENTBYID )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->elementById ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}


/*
virtual QXmlNodeModelIndex::NodeKind kind ( const QXmlNodeModelIndex & ni ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_KIND )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->kind ( *par1 ) );
  }
}


/*
virtual QXmlName name ( const QXmlNodeModelIndex & ni ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NAME )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QXmlName * ptr = new QXmlName( obj->name ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QXMLNAME", true );
  }
}


/*
virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NAMESPACEBINDINGS )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QVector<QXmlName> list = obj->namespaceBindings ( *par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QXMLNAME" );
    #else
    pDynSym = hb_dynsymFindName( "QXMLNAME" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QXmlName *) new QXmlName ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NODESBYIDREF )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QVector<QXmlNodeModelIndex> list = obj->nodesByIdref ( *par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QXMLNODEMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QXMLNODEMODELINDEX" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QXmlNodeModelIndex *) new QXmlNodeModelIndex ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QXmlNodeModelIndex root ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_ROOT )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->root ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}


/*
QSourceLocation sourceLocation ( const QXmlNodeModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_SOURCELOCATION )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QSourceLocation * ptr = new QSourceLocation( obj->sourceLocation ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSOURCELOCATION", true );
  }
}


/*
virtual QString stringValue ( const QXmlNodeModelIndex & n ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_STRINGVALUE )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->stringValue ( *par1 ).toLatin1().data() );
  }
}


/*
virtual QVariant typedValue ( const QXmlNodeModelIndex & node ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_TYPEDVALUE )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->typedValue ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
