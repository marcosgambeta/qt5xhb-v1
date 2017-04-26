/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QGraphicsAnchor INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setSizePolicy
   METHOD setSpacing
   METHOD sizePolicy
   METHOD spacing
   METHOD unsetSpacing

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsAnchor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsAnchor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsAnchor>
#endif

HB_FUNC_STATIC( QGRAPHICSANCHOR_DELETE )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setSizePolicy(QSizePolicy::Policy policy)
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SETSIZEPOLICY )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSizePolicy (  (QSizePolicy::Policy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing(qreal spacing)
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SETSPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizePolicy::Policy sizePolicy() const
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SIZEPOLICY )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizePolicy (  ) );
  }
}


/*
qreal spacing() const
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->spacing (  ) );
  }
}


/*
void unsetSpacing()
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_UNSETSPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetSpacing (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
