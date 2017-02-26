/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QABSTRACTXMLNODEMODEL
#endif

CLASS QXmlNodeModelIndex

   DATA pointer
   DATA class_id INIT Class_Id_QXmlNodeModelIndex
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD additionalData
   METHOD data
   METHOD internalPointer
   METHOD isNull
   METHOD model
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlNodeModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlNodeModelIndex>
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
#include <QXmlNodeModelIndex>
#endif
#endif

/*
QXmlNodeModelIndex ()
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlNodeModelIndex * o = new QXmlNodeModelIndex (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlNodeModelIndex *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qtxhb_itemGetPtr(1);
  QXmlNodeModelIndex * o = new QXmlNodeModelIndex ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlNodeModelIndex *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QXmlNodeModelIndex ()
//[2]QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )

HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLNODEMODELINDEX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qint64 additionalData () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_ADDITIONALDATA )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->additionalData (  ) );
  }
}


/*
qint64 data () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_DATA )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->data (  ) );
  }
}


/*
void * internalPointer () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_INTERNALPOINTER )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->internalPointer (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_ISNULL )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
const QAbstractXmlNodeModel * model () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_MODEL )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAbstractXmlNodeModel * ptr = obj->model (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTXMLNODEMODEL" );
  }
}



HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEWFROM )
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

HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEWFROM );
}

HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEWFROM );
}

HB_FUNC_STATIC( QXMLNODEMODELINDEX_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLNODEMODELINDEX_SETSELFDESTRUCTION )
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