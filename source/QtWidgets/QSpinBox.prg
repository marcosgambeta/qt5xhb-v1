/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSpinBox INHERIT QAbstractSpinBox

   DATA class_id INIT Class_Id_QSpinBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD prefix
   METHOD setPrefix
   METHOD setRange
   METHOD singleStep
   METHOD setSingleStep
   METHOD suffix
   METHOD setSuffix
   METHOD value
   METHOD setValue
   METHOD displayIntegerBase
   METHOD setDisplayIntegerBase
   METHOD onValueChanged1
   METHOD onValueChanged2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSpinBox>
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
#include <QSpinBox>
#endif
#endif

/*
explicit QSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSPINBOX_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QSpinBox * o = new QSpinBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSpinBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSPINBOX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cleanText () const
*/
HB_FUNC_STATIC( QSPINBOX_CLEANTEXT )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->cleanText (  ).toLatin1().data() );
  }
}


/*
int maximum () const
*/
HB_FUNC_STATIC( QSPINBOX_MAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
}

/*
void setMaximum ( int max )
*/
HB_FUNC_STATIC( QSPINBOX_SETMAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int minimum () const
*/
HB_FUNC_STATIC( QSPINBOX_MINIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
}

/*
void setMinimum ( int min )
*/
HB_FUNC_STATIC( QSPINBOX_SETMINIMUM )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString prefix () const
*/
HB_FUNC_STATIC( QSPINBOX_PREFIX )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->prefix (  ).toLatin1().data() );
  }
}

/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QSPINBOX_SETPREFIX )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPrefix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRange ( int min, int max )
*/
HB_FUNC_STATIC( QSPINBOX_SETRANGE )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRange ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int singleStep () const
*/
HB_FUNC_STATIC( QSPINBOX_SINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->singleStep (  ) );
  }
}

/*
void setSingleStep ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETSINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSingleStep ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString suffix () const
*/
HB_FUNC_STATIC( QSPINBOX_SUFFIX )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->suffix (  ).toLatin1().data() );
  }
}

/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QSPINBOX_SETSUFFIX )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSuffix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int value () const
*/
HB_FUNC_STATIC( QSPINBOX_VALUE )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}

/*
void setValue ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETVALUE )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int displayIntegerBase() const
*/
HB_FUNC_STATIC( QSPINBOX_DISPLAYINTEGERBASE )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->displayIntegerBase (  ) );
  }
}

/*
void setDisplayIntegerBase(int base)
*/
HB_FUNC_STATIC( QSPINBOX_SETDISPLAYINTEGERBASE )
{
  QSpinBox * obj = (QSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDisplayIntegerBase ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
