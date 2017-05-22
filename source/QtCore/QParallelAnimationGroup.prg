/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QParallelAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QParallelAnimationGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QParallelAnimationGroup>
#endif

/*
QParallelAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
    QParallelAnimationGroup * o = new QParallelAnimationGroup ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_DELETE )
{
  QParallelAnimationGroup * obj = (QParallelAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual int duration () const
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_DURATION )
{
  QParallelAnimationGroup * obj = (QParallelAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->duration () );
  }
}

#pragma ENDDUMP
