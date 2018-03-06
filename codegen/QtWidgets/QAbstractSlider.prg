%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstractSlider INHERIT QWidget

   METHOD delete
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD orientation
   METHOD setOrientation
   METHOD pageStep
   METHOD setPageStep
   METHOD invertedAppearance
   METHOD setInvertedAppearance
   METHOD invertedControls
   METHOD setInvertedControls
   METHOD setRange
   METHOD isSliderDown
   METHOD setSliderDown
   METHOD singleStep
   METHOD setSingleStep
   METHOD sliderPosition
   METHOD setSliderPosition
   METHOD triggerAction
   METHOD value
   METHOD setValue
   METHOD hasTracking
   METHOD setTracking

   METHOD onActionTriggered
   METHOD onRangeChanged
   METHOD onSliderMoved
   METHOD onSliderPressed
   METHOD onSliderReleased
   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=int maximum () const
$method=|int|maximum|

$prototype=void setMaximum ( int )
$method=|void|setMaximum|int

$prototype=int minimum () const
$method=|int|minimum|

$prototype=void setMinimum ( int )
$method=|void|setMinimum|int

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=int pageStep () const
$method=|int|pageStep|

$prototype=void setPageStep ( int )
$method=|void|setPageStep|int

$prototype=bool invertedAppearance () const
$method=|bool|invertedAppearance|

$prototype=void setInvertedAppearance ( bool )
$method=|void|setInvertedAppearance|bool

$prototype=bool invertedControls () const
$method=|bool|invertedControls|

$prototype=void setInvertedControls ( bool )
$method=|void|setInvertedControls|bool

$prototype=void setRange ( int min, int max )
$method=|void|setRange|int,int

$prototype=bool isSliderDown () const
$method=|bool|isSliderDown|

$prototype=void setSliderDown ( bool )
$method=|void|setSliderDown|bool

$prototype=int singleStep () const
$method=|int|singleStep|

$prototype=void setSingleStep ( int )
$method=|void|setSingleStep|int

$prototype=int sliderPosition () const
$method=|int|sliderPosition|

$prototype=void setSliderPosition ( int )
$method=|void|setSliderPosition|int

$prototype=void triggerAction ( SliderAction action )
$method=|void|triggerAction|QAbstractSlider::SliderAction

$prototype=int value () const
$method=|int|value|

$prototype=void setValue ( int )
$method=|void|setValue|int

$prototype=bool hasTracking () const
$method=|bool|hasTracking|

$prototype=void setTracking ( bool enable )
$method=|void|setTracking|bool

$connectSignalFunction

$signalMethod=|actionTriggered(int)
$signalMethod=|rangeChanged(int,int)
$signalMethod=|sliderMoved(int)
$signalMethod=|sliderPressed()
$signalMethod=|sliderReleased()
$signalMethod=|valueChanged(int)

#pragma ENDDUMP
