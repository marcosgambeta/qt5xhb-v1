%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

$beginClassFrom=QWidget

   METHOD delete
   METHOD fixup
   METHOD hasAcceptableInput
   METHOD interpretText
   METHOD isAccelerated
   METHOD setAccelerated
   METHOD alignment
   METHOD setAlignment
   METHOD buttonSymbols
   METHOD setButtonSymbols
   METHOD correctionMode
   METHOD setCorrectionMode
   METHOD hasFrame
   METHOD setFrame
   METHOD keyboardTracking
   METHOD setKeyboardTracking
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD specialValueText
   METHOD setSpecialValueText
   METHOD wrapping
   METHOD setWrapping
   METHOD stepBy
   METHOD text
   METHOD validate
   METHOD event
   METHOD inputMethodQuery
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD selectAll
   METHOD stepDown
   METHOD stepUp
   METHOD isGroupSeparatorShown
   METHOD setGroupSeparatorShown

   METHOD onEditingFinished

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void fixup ( QString & input ) const
$virtualMethod=|void|fixup|QString &

$prototype=bool hasAcceptableInput () const
$method=|bool|hasAcceptableInput|

$prototype=void interpretText ()
$method=|void|interpretText|

$prototype=bool isAccelerated () const
$method=|bool|isAccelerated|

$prototype=void setAccelerated ( bool on )
$method=|void|setAccelerated|bool

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=void setAlignment ( Qt::Alignment flag )
$method=|void|setAlignment|Qt::Alignment

$prototype=ButtonSymbols buttonSymbols () const
$method=|QAbstractSpinBox::ButtonSymbols|buttonSymbols|

$prototype=void setButtonSymbols ( ButtonSymbols bs )
$method=|void|setButtonSymbols|QAbstractSpinBox::ButtonSymbols

$prototype=CorrectionMode correctionMode () const
$method=|QAbstractSpinBox::CorrectionMode|correctionMode|

$prototype=void setCorrectionMode ( CorrectionMode cm )
$method=|void|setCorrectionMode|QAbstractSpinBox::CorrectionMode

$prototype=bool hasFrame () const
$method=|bool|hasFrame|

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototype=bool keyboardTracking () const
$method=|bool|keyboardTracking|

$prototype=void setKeyboardTracking ( bool kt )
$method=|void|setKeyboardTracking|bool

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=void setReadOnly ( bool r )
$method=|void|setReadOnly|bool

$prototype=QString specialValueText () const
$method=|QString|specialValueText|

$prototype=void setSpecialValueText ( const QString & txt )
$method=|void|setSpecialValueText|const QString &

$prototype=bool wrapping () const
$method=|bool|wrapping|

$prototype=void setWrapping ( bool w )
$method=|void|setWrapping|bool

$prototype=virtual void stepBy ( int steps )
$virtualMethod=|void|stepBy|int

$prototype=QString text () const
$method=|QString|text|

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
$virtualMethod=|QValidator::State|validate|QString &,int &

$prototype=bool event ( QEvent * event )
$method=|bool|event|QEvent *

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=void selectAll ()
$method=|void|selectAll|

$prototype=void stepDown ()
$method=|void|stepDown|

$prototype=void stepUp ()
$method=|void|stepUp|

$prototype=bool isGroupSeparatorShown() const
$method=5,3,0|bool|isGroupSeparatorShown|

$prototype=void setGroupSeparatorShown(bool shown)
$method=5,3,0|void|setGroupSeparatorShown|bool

$beginSignals
$signal=|editingFinished()
$endSignals

#pragma ENDDUMP
