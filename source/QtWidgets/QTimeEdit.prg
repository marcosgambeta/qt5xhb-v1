/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTimeEdit INHERIT QDateTimeEdit

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTimeEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTimeEdit>
#endif

/*
QTimeEdit ( QWidget * parent = 0 )
*/
void QTimeEdit_new1 ()
{
  QTimeEdit * o = new QTimeEdit ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
void QTimeEdit_new2 ()
{
  QTimeEdit * o = new QTimeEdit ( *PQTIME(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTimeEdit ( QWidget * parent = 0 )
//[2]QTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QTimeEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIMEEDIT_DELETE )
{
  QTimeEdit * obj = (QTimeEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

#pragma ENDDUMP
