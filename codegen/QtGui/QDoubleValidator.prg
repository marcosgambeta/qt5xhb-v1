$header

#include "hbclass.ch"

CLASS QDoubleValidator INHERIT QValidator

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bottom
   METHOD decimals
   METHOD notation
   METHOD setBottom
   METHOD setDecimals
   METHOD setNotation
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDoubleValidator ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
*/
$internalConstructor=|new2|double,double,int,QObject *

//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDoubleValidator_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QDoubleValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
double bottom () const
*/
$method=|double|bottom|

/*
int decimals () const
*/
$method=|int|decimals|

/*
Notation notation () const
*/
$method=|QDoubleValidator::Notation|notation|

/*
void setBottom ( double )
*/
$method=|void|setBottom|double

/*
void setDecimals ( int )
*/
$method=|void|setDecimals|int

/*
void setNotation ( Notation )
*/
$method=|void|setNotation|QDoubleValidator::Notation

/*
virtual void setRange ( double minimum, double maximum, int decimals = 0 )
*/
$method=|void|setRange|double,double,int=0

/*
void setTop ( double )
*/
$method=|void|setTop|double

/*
double top () const
*/
$method=|double|top|

/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
$method=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
