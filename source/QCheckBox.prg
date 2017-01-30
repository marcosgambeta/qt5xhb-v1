/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QCheckBox INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QCheckBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCheckBox>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCheckBox>
#endif
#endif

/*
QCheckBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCHECKBOX_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QCheckBox * o = new QCheckBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCheckBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QCheckBox ( const QString & text, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCHECKBOX_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QCheckBox * o = new QCheckBox ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCheckBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QCheckBox ( QWidget * parent = 0 )
//[2]QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCHECKBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCHECKBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCHECKBOX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QCHECKBOX_CHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->checkState (  );
    hb_retni( i );
  }
}


/*
bool isTristate () const
*/
HB_FUNC_STATIC( QCHECKBOX_ISTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) _qtxhb_itemGetPtrStackSelfItem();
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
  QCheckBox * obj = (QCheckBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCheckState (  (Qt::CheckState) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTristate ( bool y = true )
*/
HB_FUNC_STATIC( QCHECKBOX_SETTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTristate ( (bool) ISNIL(1)? true : hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_MINIMUMSIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_SIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}




#pragma ENDDUMP
