/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QConicalGradient INHERIT QGradient

   DATA class_id INIT Class_Id_QConicalGradient
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD center
   METHOD setAngle
   METHOD setCenter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QConicalGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QConicalGradient>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QConicalGradient>
#endif

/*
QConicalGradient ()
*/
void QConicalGradient_new1 ()
{
  QConicalGradient * o = new QConicalGradient (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QConicalGradient ( const QPointF & center, qreal angle )
*/
void QConicalGradient_new2 ()
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  qreal par2 = hb_parnd(2);
  QConicalGradient * o = new QConicalGradient ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QConicalGradient ( qreal cx, qreal cy, qreal angle )
*/
void QConicalGradient_new3 ()
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  QConicalGradient * o = new QConicalGradient ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QConicalGradient ()
//[2]QConicalGradient ( const QPointF & center, qreal angle )
//[3]QConicalGradient ( qreal cx, qreal cy, qreal angle )

HB_FUNC_STATIC( QCONICALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QConicalGradient_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QConicalGradient_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QConicalGradient_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCONICALGRADIENT_DELETE )
{
  QConicalGradient * obj = (QConicalGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal angle () const
*/
HB_FUNC_STATIC( QCONICALGRADIENT_ANGLE )
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->angle (  ) );
  }
}

/*
QPointF center () const
*/
HB_FUNC_STATIC( QCONICALGRADIENT_CENTER )
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setAngle ( qreal angle )
*/
HB_FUNC_STATIC( QCONICALGRADIENT_SETANGLE )
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      qreal par1 = hb_parnd(1);
      obj->setAngle ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter ( const QPointF & center )
*/
void QConicalGradient_setCenter1 ()
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setCenter ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter ( qreal x, qreal y )
*/
void QConicalGradient_setCenter2 ()
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setCenter ( par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QConicalGradient_setCenter1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QConicalGradient_setCenter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
