/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDateEdit INHERIT QDateTimeEdit

   DATA class_id INIT Class_Id_QDateEdit
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDateEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDateEdit>
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
#include <QDateEdit>
#endif
#endif

/*
QDateEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATEEDIT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QDateEdit * o = new QDateEdit ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDateEdit ( const QDate & date, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATEEDIT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QDateEdit * o = new QDateEdit ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDateEdit ( QWidget * parent = 0 )
//[2]QDateEdit ( const QDate & date, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATEEDIT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDateEdit * obj = (QDateEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


#pragma ENDDUMP
