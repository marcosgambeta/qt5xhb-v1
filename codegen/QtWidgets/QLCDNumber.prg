%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QLCDNumber INHERIT QFrame

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

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLCDNumber ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QLCDNumber ( uint numDigits, QWidget * parent = 0 )
$internalConstructor=|new2|uint,QWidget *=0

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

$deleteMethod

$prototype=bool checkOverflow ( double num ) const
$internalMethod=|bool|checkOverflow,checkOverflow1|double

$prototype=bool checkOverflow ( int num ) const
$internalMethod=|bool|checkOverflow,checkOverflow2|int

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

$prototype=int digitCount () const
$method=|int|digitCount|

$prototype=int intValue () const
$method=|int|intValue|

$prototype=Mode mode () const
$method=|QLCDNumber::Mode|mode|

$prototype=SegmentStyle segmentStyle () const
$method=|QLCDNumber::SegmentStyle|segmentStyle|

$prototype=void setDigitCount ( int numDigits )
$method=|void|setDigitCount|int

$prototype=void setMode ( Mode )
$method=|void|setMode|QLCDNumber::Mode

$prototype=void setSegmentStyle ( SegmentStyle )
$method=|void|setSegmentStyle|QLCDNumber::SegmentStyle

$prototype=bool smallDecimalPoint () const
$method=|bool|smallDecimalPoint|

$prototype=double value () const
$method=|double|value|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void display ( const QString & s )
$internalMethod=|void|display,display1|const QString &

$prototype=void display ( double num )
$internalMethod=|void|display,display2|double

$prototype=void display ( int num )
$internalMethod=|void|display,display3|int

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

$prototype=void setBinMode ()
$method=|void|setBinMode|

$prototype=void setDecMode ()
$method=|void|setDecMode|

$prototype=void setHexMode ()
$method=|void|setHexMode|

$prototype=void setOctMode ()
$method=|void|setOctMode|

$prototype=void setSmallDecimalPoint ( bool )
$method=|void|setSmallDecimalPoint|bool

$connectSignalFunction

$signalMethod=|overflow()

#pragma ENDDUMP
