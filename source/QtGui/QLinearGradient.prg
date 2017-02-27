/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QLinearGradient INHERIT QGradient

   DATA class_id INIT Class_Id_QLinearGradient
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop1
   METHOD setFinalStop2
   METHOD setFinalStop
   METHOD setStart1
   METHOD setStart2
   METHOD setStart
   METHOD start
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLinearGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QLinearGradient>
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
#include <QLinearGradient>
#endif
#endif

/*
QLinearGradient ()
*/
HB_FUNC_STATIC( QLINEARGRADIENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLinearGradient * o = new QLinearGradient (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLinearGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLinearGradient ( const QPointF & start, const QPointF & finalStop )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  QLinearGradient * o = new QLinearGradient ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLinearGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  QLinearGradient * o = new QLinearGradient ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLinearGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QLinearGradient ()
//[2]QLinearGradient ( const QPointF & start, const QPointF & finalStop )
//[3]QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QLINEARGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINEARGRADIENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF finalStop () const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_FINALSTOP )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->finalStop (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setFinalStop ( const QPointF & stop )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP1 )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setFinalStop ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFinalStop ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP2 )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setFinalStop ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFinalStop ( const QPointF & stop )
//[2]void setFinalStop ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETFINALSTOP1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETFINALSTOP2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStart ( const QPointF & start )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART1 )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setStart ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStart ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART2 )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setStart ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setStart ( const QPointF & start )
//[2]void setStart ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETSTART1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETSTART2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF start () const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_START )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->start (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



#pragma ENDDUMP
