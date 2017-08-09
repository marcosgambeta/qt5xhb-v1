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

/*
QLCDNumber ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QLCDNumber ( uint numDigits, QWidget * parent = 0 )
*/
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

/*
bool checkOverflow ( double num ) const
*/
$internalMethod=|bool|checkOverflow,checkOverflow1|double

/*
bool checkOverflow ( int num ) const
*/
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

/*
int digitCount () const
*/
$method=|int|digitCount|

/*
int intValue () const
*/
$method=|int|intValue|

/*
Mode mode () const
*/
$method=|QLCDNumber::Mode|mode|

/*
SegmentStyle segmentStyle () const
*/
$method=|QLCDNumber::SegmentStyle|segmentStyle|

/*
void setDigitCount ( int numDigits )
*/
$method=|void|setDigitCount|int

/*
void setMode ( Mode )
*/
$method=|void|setMode|QLCDNumber::Mode

/*
void setSegmentStyle ( SegmentStyle )
*/
$method=|void|setSegmentStyle|QLCDNumber::SegmentStyle

/*
bool smallDecimalPoint () const
*/
$method=|bool|smallDecimalPoint|

/*
double value () const
*/
$method=|double|value|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void display ( const QString & s )
*/
$internalMethod=|void|display,display1|const QString &

/*
void display ( double num )
*/
$internalMethod=|void|display,display2|double

/*
void display ( int num )
*/
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

/*
void setBinMode ()
*/
$method=|void|setBinMode|

/*
void setDecMode ()
*/
$method=|void|setDecMode|

/*
void setHexMode ()
*/
$method=|void|setHexMode|

/*
void setOctMode ()
*/
$method=|void|setOctMode|

/*
void setSmallDecimalPoint ( bool )
*/
$method=|void|setSmallDecimalPoint|bool

#pragma ENDDUMP
