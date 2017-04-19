/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QCheckBox INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QCheckBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCheckBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCheckBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCheckBox>
#endif

/*
explicit QCheckBox ( QWidget * parent = 0 )
*/
void QCheckBox_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QCheckBox * o = new QCheckBox ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QCheckBox ( const QString & text, QWidget * parent = 0 )
*/
void QCheckBox_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QCheckBox * o = new QCheckBox ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QCheckBox ( QWidget * parent = 0 )
//[2]explicit QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QCheckBox_new1 ();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QCheckBox_new2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCHECKBOX_DELETE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QCHECKBOX_CHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->checkState (  ) );
  }
}

/*
bool isTristate () const
*/
HB_FUNC_STATIC( QCHECKBOX_ISTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isTristate (  ) );
  }
}

/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QCHECKBOX_SETCHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setCheckState (  (Qt::CheckState) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTristate ( bool y = true )
*/
HB_FUNC_STATIC( QCHECKBOX_SETTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISLOG(1)||ISNIL(1)) )
    {
      obj->setTristate ( (bool) ISNIL(1)? true : hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_MINIMUMSIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_SIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
