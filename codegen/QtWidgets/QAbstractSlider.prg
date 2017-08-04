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

/*
int maximum () const
*/
$method=|int|maximum|

/*
void setMaximum ( int )
*/
$method=|void|setMaximum|int

/*
int minimum () const
*/
$method=|int|minimum|

/*
void setMinimum ( int )
*/
$method=|void|setMinimum|int

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void setOrientation ( Qt::Orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
int pageStep () const
*/
$method=|int|pageStep|

/*
void setPageStep ( int )
*/
$method=|void|setPageStep|int

/*
bool invertedAppearance () const
*/
$method=|bool|invertedAppearance|

/*
void setInvertedAppearance ( bool )
*/
$method=|void|setInvertedAppearance|bool

/*
bool invertedControls () const
*/
$method=|bool|invertedControls|

/*
void setInvertedControls ( bool )
*/
$method=|void|setInvertedControls|bool

/*
void setRange ( int min, int max )
*/
$method=|void|setRange|int,int

/*
bool isSliderDown () const
*/
$method=|bool|isSliderDown|

/*
void setSliderDown ( bool )
*/
$method=|void|setSliderDown|bool

/*
int singleStep () const
*/
$method=|int|singleStep|

/*
void setSingleStep ( int )
*/
$method=|void|setSingleStep|int

/*
int sliderPosition () const
*/
$method=|int|sliderPosition|

/*
void setSliderPosition ( int )
*/
$method=|void|setSliderPosition|int

/*
void triggerAction ( SliderAction action )
*/
$method=|void|triggerAction|QAbstractSlider::SliderAction

/*
int value () const
*/
$method=|int|value|

/*
void setValue ( int )
*/
$method=|void|setValue|int

/*
bool hasTracking () const
*/
$method=|bool|hasTracking|

/*
void setTracking ( bool enable )
*/
$method=|void|setTracking|bool

#pragma ENDDUMP
