$header

#include "hbclass.ch"

CLASS QDoubleSpinBox INHERIT QAbstractSpinBox

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD decimals
   METHOD setDecimals
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
   METHOD textFromValue
   METHOD value
   METHOD setValue
   METHOD valueFromText
   METHOD fixup
   METHOD validate

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDoubleSpinBox ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QString cleanText () const
*/
$method=|QString|cleanText|

/*
int decimals () const
*/
$method=|int|decimals|

/*
void setDecimals ( int prec )
*/
$method=|void|setDecimals|int

/*
double maximum () const
*/
$method=|double|maximum|

/*
void setMaximum ( double max )
*/
$method=|void|setMaximum|double

/*
double minimum () const
*/
$method=|double|minimum|

/*
void setMinimum ( double min )
*/
$method=|void|setMinimum|double

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
void setPrefix ( const QString & prefix )
*/
$method=|void|setPrefix|const QString &

/*
void setRange ( double min, double max )
*/
$method=|void|setRange|double,double

/*
double singleStep () const
*/
$method=|double|singleStep|

/*
void setSingleStep ( double val )
*/
$method=|void|setSingleStep|double

/*
QString suffix () const
*/
$method=|QString|suffix|

/*
void setSuffix ( const QString & suffix )
*/
$method=|void|setSuffix|const QString &

/*
virtual QString textFromValue ( double value ) const
*/
$method=|QString|textFromValue|double

/*
double value () const
*/
$method=|double|value|

/*
void setValue ( double val )
*/
$method=|void|setValue|double

/*
virtual double valueFromText ( const QString & text ) const
*/
$method=|double|valueFromText|const QString &

/*
virtual void fixup ( QString & str ) const
*/
$virtualMethod=|void|fixup|QString &

/*
virtual QValidator::State validate ( QString & text, int & pos ) const
*/
$virtualMethod=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
