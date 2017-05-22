/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QEasingCurve

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addCubicBezierSegment
   METHOD addTCBSegment
   METHOD amplitude
   METHOD overshoot
   METHOD period
   METHOD setAmplitude
   METHOD setOvershoot
   METHOD setPeriod
   METHOD setType
   METHOD swap
   METHOD toCubicSpline
   METHOD type
   METHOD valueForProgress

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEasingCurve
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QEasingCurve>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEasingCurve>
#endif

#include <QPointF>

/*
QEasingCurve ( Type type = Linear )
*/
void QEasingCurve_new1 ()
{
  int par1 = ISNIL(1)? (int) QEasingCurve::Linear : hb_parni(1);
  QEasingCurve * o = new QEasingCurve (  (QEasingCurve::Type) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QEasingCurve ( const QEasingCurve & other )
*/
void QEasingCurve_new2 ()
{
  QEasingCurve * par1 = (QEasingCurve *) _qt5xhb_itemGetPtr(1);
  QEasingCurve * o = new QEasingCurve ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QEasingCurve(Type type = Linear)
//[2]QEasingCurve(const QEasingCurve & other)

HB_FUNC_STATIC( QEASINGCURVE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEasingCurve_new1();
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    QEasingCurve_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEASINGCURVE_DELETE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addCubicBezierSegment(const QPointF & c1, const QPointF & c2, const QPointF & endPoint)
*/
HB_FUNC_STATIC( QEASINGCURVE_ADDCUBICBEZIERSEGMENT )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) )
    {
      QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
      QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
      QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
      obj->addCubicBezierSegment ( *par1, *par2, *par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addTCBSegment(const QPointF & nextPoint, qreal t, qreal c, qreal b)
*/
HB_FUNC_STATIC( QEASINGCURVE_ADDTCBSEGMENT )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINTF(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
      obj->addTCBSegment ( *par1, PQREAL(2), PQREAL(3), PQREAL(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal amplitude() const
*/
HB_FUNC_STATIC( QEASINGCURVE_AMPLITUDE )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->amplitude () );
  }
}

/*
qreal overshoot() const
*/
HB_FUNC_STATIC( QEASINGCURVE_OVERSHOOT )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->overshoot () );
  }
}

/*
qreal period() const
*/
HB_FUNC_STATIC( QEASINGCURVE_PERIOD )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->period () );
  }
}

/*
void setAmplitude(qreal amplitude)
*/
HB_FUNC_STATIC( QEASINGCURVE_SETAMPLITUDE )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setAmplitude ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOvershoot(qreal overshoot)
*/
HB_FUNC_STATIC( QEASINGCURVE_SETOVERSHOOT )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOvershoot ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPeriod(qreal period)
*/
HB_FUNC_STATIC( QEASINGCURVE_SETPERIOD )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPeriod ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setType(Type type)
*/
HB_FUNC_STATIC( QEASINGCURVE_SETTYPE )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setType (  (QEasingCurve::Type) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swap(QEasingCurve & other)
*/
HB_FUNC_STATIC( QEASINGCURVE_SWAP )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEASINGCURVE(1) )
    {
      QEasingCurve * par1 = (QEasingCurve *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVector<QPointF> toCubicSpline() const
*/
HB_FUNC_STATIC( QEASINGCURVE_TOCUBICSPLINE )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<QPointF> list = obj->toCubicSpline ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPOINTF" );
    #else
    pDynSym = hb_dynsymFindName( "QPOINTF" );
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
        hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
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
Type type() const
*/
HB_FUNC_STATIC( QEASINGCURVE_TYPE )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
qreal valueForProgress(qreal progress) const
*/
HB_FUNC_STATIC( QEASINGCURVE_VALUEFORPROGRESS )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retnd( obj->valueForProgress ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QEASINGCURVE_NEWFROM )
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

HB_FUNC_STATIC( QEASINGCURVE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QEASINGCURVE_NEWFROM );
}

HB_FUNC_STATIC( QEASINGCURVE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QEASINGCURVE_NEWFROM );
}

HB_FUNC_STATIC( QEASINGCURVE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QEASINGCURVE_SETSELFDESTRUCTION )
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
