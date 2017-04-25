/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTXMLNODEMODEL
#endif

CLASS QXmlNodeModelIndex

   DATA pointer
   //DATA class_id INIT Class_Id_QXmlNodeModelIndex
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include <QXmlNodeModelIndex>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlNodeModelIndex>
#endif

/*
QXmlNodeModelIndex ()
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW1 )
{
  QXmlNodeModelIndex * o = new QXmlNodeModelIndex (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW2 )
{
  QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) _qt5xhb_itemGetPtr(1);
  QXmlNodeModelIndex * o = new QXmlNodeModelIndex ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
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
}

/*
qint64 additionalData () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_ADDITIONALDATA )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAbstractXmlNodeModel * ptr = obj->model (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTXMLNODEMODEL" );
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