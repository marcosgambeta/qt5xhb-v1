/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION
#endif

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   DATA class_id INIT Class_Id_QSequentialAnimationGroup
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration
   METHOD onCurrentAnimationChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSequentialAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSequentialAnimationGroup>
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
#include <QSequentialAnimationGroup>
#endif

/*
QSequentialAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSequentialAnimationGroup * o = new QSequentialAnimationGroup ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSequentialAnimationGroup *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DELETE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPauseAnimation * addPause ( int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_ADDPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPauseAnimation * ptr = obj->addPause ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
  }
}


/*
QAbstractAnimation * currentAnimation () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_CURRENTANIMATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * ptr = obj->currentAnimation (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}


/*
QPauseAnimation * insertPause ( int index, int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_INSERTPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPauseAnimation * ptr = obj->insertPause ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
  }
}


/*
virtual int duration () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DURATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration (  ) );
  }
}




#pragma ENDDUMP
