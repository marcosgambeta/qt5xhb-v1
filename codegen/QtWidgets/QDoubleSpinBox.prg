%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSpinBox

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=prototype=explicit QDoubleSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QString cleanText () const
$method=|QString|cleanText|

$prototype=int decimals () const
$method=|int|decimals|

$prototype=void setDecimals ( int prec )
$method=|void|setDecimals|int

$prototype=double maximum () const
$method=|double|maximum|

$prototype=void setMaximum ( double max )
$method=|void|setMaximum|double

$prototype=double minimum () const
$method=|double|minimum|

$prototype=void setMinimum ( double min )
$method=|void|setMinimum|double

$prototype=QString prefix () const
$method=|QString|prefix|

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( double min, double max )
$method=|void|setRange|double,double

$prototype=double singleStep () const
$method=|double|singleStep|

$prototype=void setSingleStep ( double val )
$method=|void|setSingleStep|double

$prototype=QString suffix () const
$method=|QString|suffix|

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototype=virtual QString textFromValue ( double value ) const
$virtualMethod=|QString|textFromValue|double

$prototype=double value () const
$method=|double|value|

$prototype=void setValue ( double val )
$method=|void|setValue|double

$prototype=virtual double valueFromText ( const QString & text ) const
$virtualMethod=|double|valueFromText|const QString &

$prototype=virtual void fixup ( QString & str ) const
$virtualMethod=|void|fixup|QString &

$prototype=virtual QValidator::State validate ( QString & text, int & pos ) const
$virtualMethod=|QValidator::State|validate|QString &,int &

$beginSignals
$beginGroup
$signal=|valueChanged(double)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
