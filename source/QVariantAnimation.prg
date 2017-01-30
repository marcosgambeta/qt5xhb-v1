/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QEASINGCURVE

CLASS QVariantAnimation INHERIT QAbstractAnimation

   DATA class_id INIT Class_Id_QVariantAnimation
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD currentValue
   METHOD easingCurve
   METHOD endValue
   METHOD keyValueAt
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndValue
   METHOD setKeyValueAt
   METHOD setStartValue
   METHOD startValue
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVariantAnimation
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
#include <QVariantAnimation>
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
#include <QVariantAnimation>
#endif
#endif


HB_FUNC_STATIC( QVARIANTANIMATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QVariant currentValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_CURRENTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->currentValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QEasingCurve easingCurve () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_EASINGCURVE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEasingCurve * ptr = new QEasingCurve( obj->easingCurve (  ) );
    _qt4xhb_createReturnClass ( ptr, "QEASINGCURVE" );
  }
}


/*
QVariant endValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_ENDVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->endValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariant keyValueAt ( qreal step ) const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_KEYVALUEAT )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QVariant * ptr = new QVariant( obj->keyValueAt ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
void setDuration ( int msecs )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETDURATION )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDuration ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEasingCurve ( const QEasingCurve & easing )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETEASINGCURVE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEasingCurve * par1 = (QEasingCurve *) _qtxhb_itemGetPtr(1);
    obj->setEasingCurve ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEndValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETENDVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setEndValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeyValueAt ( qreal step, const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETKEYVALUEAT )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setKeyValueAt ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setStartValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETSTARTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setStartValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant startValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_STARTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->startValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}




#pragma ENDDUMP
