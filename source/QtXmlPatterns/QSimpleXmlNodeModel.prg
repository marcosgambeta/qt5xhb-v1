/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QXMLNAMEPOOL
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
#endif

CLASS QSimpleXmlNodeModel INHERIT QAbstractXmlNodeModel

   DATA class_id INIT Class_Id_QSimpleXmlNodeModel
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD namePool
   METHOD baseUri
   METHOD elementById
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD stringValue
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSimpleXmlNodeModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSimpleXmlNodeModel>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSimpleXmlNodeModel>
#endif
#endif

#include <QVector>


HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QXmlNamePool & namePool () const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NAMEPOOL )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * ptr = &obj->namePool (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL" );
  }
}


/*
virtual QUrl baseUri ( const QXmlNodeModelIndex & node ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_BASEURI )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->baseUri ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_ELEMENTBYID )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->elementById ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
  }
}


/*
virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & node ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NAMESPACEBINDINGS )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
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
virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NODESBYIDREF )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
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
virtual QString stringValue ( const QXmlNodeModelIndex & node ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_STRINGVALUE )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->stringValue ( *par1 ).toLatin1().data() );
  }
}



#pragma ENDDUMP
