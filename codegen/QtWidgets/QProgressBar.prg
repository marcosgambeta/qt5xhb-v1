$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressBar INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD format
   METHOD invertedAppearance
   METHOD isTextVisible
   METHOD maximum
   METHOD minimum
   METHOD orientation
   METHOD setAlignment
   METHOD setFormat
   METHOD setInvertedAppearance
   METHOD setTextDirection
   METHOD setTextVisible
   METHOD text
   METHOD textDirection
   METHOD value
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD reset
   METHOD setMaximum
   METHOD setMinimum
   METHOD setOrientation
   METHOD setRange
   METHOD setValue

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QProgressBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPROGRESSBAR_NEW )
{
  QProgressBar * o = new QProgressBar ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QString format () const
*/
$method=|QString|format|

/*
bool invertedAppearance ()
*/
$method=|bool|invertedAppearance|

/*
bool isTextVisible () const
*/
$method=|bool|isTextVisible|

/*
int maximum () const
*/
$method=|int|maximum|

/*
int minimum () const
*/
$method=|int|minimum|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void setAlignment ( Qt::Alignment alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setFormat ( const QString & format )
*/
$method=|void|setFormat|const QString &

/*
void setInvertedAppearance ( bool invert )
*/
$method=|void|setInvertedAppearance|bool

/*
void setTextDirection ( QProgressBar::Direction textDirection )
*/
$method=|void|setTextDirection|QProgressBar::Direction

/*
void setTextVisible ( bool visible )
*/
$method=|void|setTextVisible|bool

/*
virtual QString text () const
*/
$method=|QString|text|

/*
QProgressBar::Direction textDirection ()
*/
$method=|QProgressBar::Direction|textDirection|

/*
int value () const
*/
$method=|int|value|

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_MINIMUMSIZEHINT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSBAR_SIZEHINT )
{
  QProgressBar * obj = (QProgressBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void reset ()
*/
$method=|void|reset|

/*
void setMaximum ( int maximum )
*/
$method=|void|setMaximum|int

/*
void setMinimum ( int minimum )
*/
$method=|void|setMinimum|int

/*
void setOrientation ( Qt::Orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setRange ( int minimum, int maximum )
*/
$method=|void|setRange|int,int

/*
void setValue ( int value )
*/
$method=|void|setValue|int

#pragma ENDDUMP
