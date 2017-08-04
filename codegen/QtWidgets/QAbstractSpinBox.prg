$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractSpinBox INHERIT QWidget

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_FIXUP )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAcceptableInput () const
*/
$method=|bool|hasAcceptableInput|

/*
void interpretText ()
*/
$method=|void|interpretText|

/*
bool isAccelerated () const
*/
$method=|bool|isAccelerated|

/*
void setAccelerated ( bool on )
*/
$method=|void|setAccelerated|bool

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
void setAlignment ( Qt::Alignment flag )
*/
$method=|void|setAlignment|Qt::Alignment

/*
ButtonSymbols buttonSymbols () const
*/
$method=|QAbstractSpinBox::ButtonSymbols|buttonSymbols|

/*
void setButtonSymbols ( ButtonSymbols bs )
*/
$method=|void|setButtonSymbols|QAbstractSpinBox::ButtonSymbols

/*
CorrectionMode correctionMode () const
*/
$method=|QAbstractSpinBox::CorrectionMode|correctionMode|

/*
void setCorrectionMode ( CorrectionMode cm )
*/
$method=|void|setCorrectionMode|QAbstractSpinBox::CorrectionMode

/*
bool hasFrame () const
*/
$method=|bool|hasFrame|

/*
void setFrame ( bool )
*/
$method=|void|setFrame|bool

/*
bool keyboardTracking () const
*/
$method=|bool|keyboardTracking|

/*
void setKeyboardTracking ( bool kt )
*/
$method=|void|setKeyboardTracking|bool

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
void setReadOnly ( bool r )
*/
$method=|void|setReadOnly|bool

/*
QString specialValueText () const
*/
$method=|QString|specialValueText|

/*
void setSpecialValueText ( const QString & txt )
*/
$method=|void|setSpecialValueText|const QString &

/*
bool wrapping () const
*/
$method=|bool|wrapping|

/*
void setWrapping ( bool w )
*/
$method=|void|setWrapping|bool

/*
virtual void stepBy ( int steps )
*/
$method=|void|stepBy|int

/*
QString text () const
*/
$method=|QString|text|

/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_VALIDATE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}

/*
bool event ( QEvent * event )
*/
$method=|bool|event|QEvent *

/*
QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual void clear ()
*/
$method=|void|clear|

/*
void selectAll ()
*/
$method=|void|selectAll|

/*
void stepDown ()
*/
$method=|void|stepDown|

/*
void stepUp ()
*/
$method=|void|stepUp|

/*
bool isGroupSeparatorShown() const
*/
$method=|bool|isGroupSeparatorShown|

/*
void setGroupSeparatorShown(bool shown)
*/
$method=|void|setGroupSeparatorShown|bool

#pragma ENDDUMP
