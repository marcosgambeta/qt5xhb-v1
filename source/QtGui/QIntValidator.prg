/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QIntValidator INHERIT QValidator

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD fixup
   METHOD locale
   METHOD setBottom
   METHOD setLocale
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate

   METHOD onChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIntValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QIntValidator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QIntValidator>
#endif

/*
QIntValidator(QObject * parent = 0)
*/
HB_FUNC_STATIC( QINTVALIDATOR_NEW1 )
{
  QIntValidator * o = new QIntValidator ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QIntValidator(int minimum, int maximum, QObject * parent = 0)
*/
HB_FUNC_STATIC( QINTVALIDATOR_NEW2 )
{
  QIntValidator * o = new QIntValidator ( PINT(1), PINT(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QIntValidator(QObject * parent = 0)
//[2]QIntValidator(int minimum, int maximum, QObject * parent = 0)

HB_FUNC_STATIC( QINTVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QINTVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QINTVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QINTVALIDATOR_DELETE )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottom() const
*/
HB_FUNC_STATIC( QINTVALIDATOR_BOTTOM )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bottom () );
  }
}


/*
virtual void fixup(QString & input) const
*/
HB_FUNC_STATIC( QINTVALIDATOR_FIXUP )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLocale locale() const
*/
HB_FUNC_STATIC( QINTVALIDATOR_LOCALE )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
void setBottom(int)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETBOTTOM )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottom ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLocale(const QLocale & locale)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETLOCALE )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRange(int bottom, int top)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETRANGE )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop(int)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETTOP )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTop ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int top() const
*/
HB_FUNC_STATIC( QINTVALIDATOR_TOP )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->top () );
  }
}


/*
virtual State validate(QString & input, int & pos) const = 0
*/
HB_FUNC_STATIC( QINTVALIDATOR_VALIDATE )
{
  QIntValidator * obj = (QIntValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}





#pragma ENDDUMP
