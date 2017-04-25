/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QLCDNumber INHERIT QFrame

   //DATA class_id INIT Class_Id_QLCDNumber
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD checkOverflow
   METHOD digitCount
   METHOD intValue
   METHOD mode
   METHOD segmentStyle
   METHOD setDigitCount
   METHOD setMode
   METHOD setSegmentStyle
   METHOD smallDecimalPoint
   METHOD value
   METHOD sizeHint
   METHOD display
   METHOD setBinMode
   METHOD setDecMode
   METHOD setHexMode
   METHOD setOctMode
   METHOD setSmallDecimalPoint

   METHOD onOverflow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLCDNumber
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLCDNumber>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLCDNumber>
#endif

/*
QLCDNumber ( QWidget * parent = 0 )
*/
void QLCDNumber_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QLCDNumber * o = new QLCDNumber ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLCDNumber ( uint numDigits, QWidget * parent = 0 )
*/
void QLCDNumber_new2 ()
{
  uint par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QLCDNumber * o = new QLCDNumber ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QLCDNumber ( QWidget * parent = 0 )
//[2]QLCDNumber ( uint numDigits, QWidget * parent = 0 )

HB_FUNC_STATIC( QLCDNUMBER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QLCDNumber_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QLCDNumber_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLCDNUMBER_DELETE )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool checkOverflow ( double num ) const
*/
void QLCDNumber_checkOverflow1 ()
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    double par1 = hb_parnd(1);
    hb_retl( obj->checkOverflow ( par1 ) );
  }
}

/*
bool checkOverflow ( int num ) const
*/
void QLCDNumber_checkOverflow2 ()
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->checkOverflow ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[1]bool checkOverflow ( double num ) const
//[2]bool checkOverflow ( int num ) const

HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);
    if( pNum )
    {
      if( HB_IS_DOUBLE(pNum) )
      {
        QLCDNumber_checkOverflow1();
      }
      else if( HB_IS_INTEGER(pNum) )
      {
        QLCDNumber_checkOverflow2();
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int digitCount () const
*/
HB_FUNC_STATIC( QLCDNUMBER_DIGITCOUNT )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->digitCount (  ) );
  }
}

/*
int intValue () const
*/
HB_FUNC_STATIC( QLCDNUMBER_INTVALUE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->intValue (  ) );
  }
}

/*
Mode mode () const
*/
HB_FUNC_STATIC( QLCDNUMBER_MODE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->mode (  ) );
  }
}

/*
SegmentStyle segmentStyle () const
*/
HB_FUNC_STATIC( QLCDNUMBER_SEGMENTSTYLE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->segmentStyle (  ) );
  }
}

/*
void setDigitCount ( int numDigits )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETDIGITCOUNT )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDigitCount ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMode ( Mode )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETMODE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setMode (  (QLCDNumber::Mode) par1 );
    }
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSegmentStyle ( SegmentStyle )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETSEGMENTSTYLE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setSegmentStyle (  (QLCDNumber::SegmentStyle) par1 );
    }
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool smallDecimalPoint () const
*/
HB_FUNC_STATIC( QLCDNUMBER_SMALLDECIMALPOINT )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->smallDecimalPoint (  ) );
  }
}

/*
double value () const
*/
HB_FUNC_STATIC( QLCDNUMBER_VALUE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->value (  ) );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QLCDNUMBER_SIZEHINT )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void display ( const QString & s )
*/
void QLCDNumber_display1 ()
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->display ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void display ( double num )
*/
void QLCDNumber_display2 ()
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->display ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void display ( int num )
*/
void QLCDNumber_display3 ()
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->display ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void display ( const QString & s )
//[2]void display ( double num )
//[3]void display ( int num )

HB_FUNC_STATIC( QLCDNUMBER_DISPLAY )
{
  if( ISNUMPAR(1) )
  {
    if( ISCHAR(1) )
    {
      QLCDNumber_display1();
    }
    else if( ISNUM(1) )
    {
      PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);
      if( pNum )
      {
        if( HB_IS_DOUBLE(pNum) )
        {
          QLCDNumber_display2();
        }
        else if( HB_IS_INTEGER(pNum) )
        {
          QLCDNumber_display3();
        }
        else
        {
          hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
        }
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBinMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETBINMODE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBinMode (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDecMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETDECMODE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDecMode (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHexMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETHEXMODE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setHexMode (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOctMode ()
*/
HB_FUNC_STATIC( QLCDNUMBER_SETOCTMODE )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOctMode (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSmallDecimalPoint ( bool )
*/
HB_FUNC_STATIC( QLCDNUMBER_SETSMALLDECIMALPOINT )
{
  QLCDNumber * obj = (QLCDNumber *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSmallDecimalPoint ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
