$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractSpinBox INHERIT QWidget

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QABSTRACTSPINBOX_ALIGNMENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}

/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETALIGNMENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ButtonSymbols buttonSymbols () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_BUTTONSYMBOLS )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->buttonSymbols () );
  }
}

/*
void setButtonSymbols ( ButtonSymbols bs )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETBUTTONSYMBOLS )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButtonSymbols ( (QAbstractSpinBox::ButtonSymbols) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
CorrectionMode correctionMode () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_CORRECTIONMODE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->correctionMode () );
  }
}

/*
void setCorrectionMode ( CorrectionMode cm )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETCORRECTIONMODE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCorrectionMode ( (QAbstractSpinBox::CorrectionMode) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QABSTRACTSPINBOX_INPUTMETHODQUERY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_MINIMUMSIZEHINT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SIZEHINT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

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
