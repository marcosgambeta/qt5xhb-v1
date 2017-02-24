/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QGroupBox INHERIT QWidget

   DATA class_id INIT Class_Id_QGroupBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD isCheckable
   METHOD isChecked
   METHOD isFlat
   METHOD setAlignment
   METHOD setCheckable
   METHOD setFlat
   METHOD setTitle
   METHOD title
   METHOD minimumSizeHint
   METHOD setChecked
   METHOD onClicked
   METHOD onToggled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGroupBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGroupBox>
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
#include <QGroupBox>
#endif
#endif

/*
QGroupBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QGroupBox * o = new QGroupBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGroupBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGroupBox ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QGroupBox * o = new QGroupBox ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGroupBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QGroupBox ( QWidget * parent = 0 )
//[2]QGroupBox ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGROUPBOX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QGROUPBOX_ALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}


/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISCHECKABLE )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCheckable (  ) );
  }
}


/*
bool isChecked () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISCHECKED )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isChecked (  ) );
  }
}


/*
bool isFlat () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISFLAT )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFlat (  ) );
  }
}


/*
void setAlignment ( int alignment )
*/
HB_FUNC_STATIC( QGROUPBOX_SETALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlignment ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCheckable ( bool checkable )
*/
HB_FUNC_STATIC( QGROUPBOX_SETCHECKABLE )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCheckable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlat ( bool flat )
*/
HB_FUNC_STATIC( QGROUPBOX_SETFLAT )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFlat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QGROUPBOX_SETTITLE )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QGROUPBOX_TITLE )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QGROUPBOX_MINIMUMSIZEHINT )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setChecked ( bool checked )
*/
HB_FUNC_STATIC( QGROUPBOX_SETCHECKED )
{
  QGroupBox * obj = (QGroupBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChecked ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
