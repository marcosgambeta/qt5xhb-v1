/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsLayout INHERIT QGraphicsLayoutItem

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activate
   METHOD count
   METHOD invalidate
   METHOD isActivated
   METHOD itemAt
   METHOD removeAt
   METHOD setContentsMargins
   METHOD widgetEvent
   METHOD getContentsMargins
   METHOD updateGeometry
   METHOD instantInvalidatePropagation
   METHOD setInstantInvalidatePropagation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsLayout>
#endif


HB_FUNC_STATIC( QGRAPHICSLAYOUT_DELETE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void activate ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ACTIVATE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->activate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_COUNT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_INVALIDATE )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isActivated () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ISACTIVATED )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActivated (  ) );
  }
}


/*
virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_ITEMAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
virtual void removeAt ( int index ) = 0
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_REMOVEAT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeAt ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_SETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentsMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void widgetEvent ( QEvent * e )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_WIDGETEVENT )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
    obj->widgetEvent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_GETCONTENTSMARGINS )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void updateGeometry ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_UPDATEGEOMETRY )
{
  QGraphicsLayout * obj = (QGraphicsLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateGeometry (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool instantInvalidatePropagation ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_INSTANTINVALIDATEPROPAGATION )
{
  hb_retl( QGraphicsLayout::instantInvalidatePropagation (  ) );
}


/*
static void setInstantInvalidatePropagation ( bool enable )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUT_SETINSTANTINVALIDATEPROPAGATION )
{
  if( ISLOG(1) )
  {
    QGraphicsLayout::setInstantInvalidatePropagation ( (bool) hb_parl(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
