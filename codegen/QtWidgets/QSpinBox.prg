%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QString cleanText () const
$method=|QString|cleanText|

$prototype=int maximum () const
$method=|int|maximum|

$prototype=void setMaximum ( int max )
$method=|void|setMaximum|int

$prototype=int minimum () const
$method=|int|minimum|

$prototype=void setMinimum ( int min )
$method=|void|setMinimum|int

$prototype=QString prefix () const
$method=|QString|prefix|

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( int min, int max )
$method=|void|setRange|int,int

$prototype=int singleStep () const
$method=|int|singleStep|

$prototype=void setSingleStep ( int val )
$method=|void|setSingleStep|int

$prototype=QString suffix () const
$method=|QString|suffix|

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototype=int value () const
$method=|int|value|

$prototype=void setValue ( int val )
$method=|void|setValue|int

$prototype=int displayIntegerBase() const
$method=|int|displayIntegerBase|

$prototype=void setDisplayIntegerBase(int base)
$method=|void|setDisplayIntegerBase|int

$beginSignals
$beginGroup
$signal=|valueChanged(int)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
