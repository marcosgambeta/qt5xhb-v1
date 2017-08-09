$header

#include "hbclass.ch"

CLASS QSpinBox INHERIT QAbstractSpinBox

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

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QSpinBox ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QString cleanText () const
*/
$method=|QString|cleanText|

/*
int maximum () const
*/
$method=|int|maximum|

/*
void setMaximum ( int max )
*/
$method=|void|setMaximum|int

/*
int minimum () const
*/
$method=|int|minimum|

/*
void setMinimum ( int min )
*/
$method=|void|setMinimum|int

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
void setPrefix ( const QString & prefix )
*/
$method=|void|setPrefix|const QString &

/*
void setRange ( int min, int max )
*/
$method=|void|setRange|int,int

/*
int singleStep () const
*/
$method=|int|singleStep|

/*
void setSingleStep ( int val )
*/
$method=|void|setSingleStep|int

/*
QString suffix () const
*/
$method=|QString|suffix|

/*
void setSuffix ( const QString & suffix )
*/
$method=|void|setSuffix|const QString &

/*
int value () const
*/
$method=|int|value|

/*
void setValue ( int val )
*/
$method=|void|setValue|int

/*
int displayIntegerBase() const
*/
$method=|int|displayIntegerBase|

/*
void setDisplayIntegerBase(int base)
*/
$method=|void|setDisplayIntegerBase|int

#pragma ENDDUMP
