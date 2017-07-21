$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QGroupBox INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD isCheckable
   METHOD isChecked
   METHOD isFlat
   METHOD setAlignment
   METHOD setCheckable
   METHOD setFlat
   METHOD setTitle
   METHOD title
   METHOD minimumSizeHint
   METHOD setChecked

   METHOD onClicked
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGroupBox ( QWidget * parent = 0 )
*/
void QGroupBox_new1 ()
{
  QGroupBox * o = new QGroupBox ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGroupBox ( const QString & title, QWidget * parent = 0 )
*/
void QGroupBox_new2 ()
{
  QGroupBox * o = new QGroupBox ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGroupBox ( QWidget * parent = 0 )
//[2]QGroupBox ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QGroupBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QGroupBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QGROUPBOX_ALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
bool isFlat () const
*/
$method=|bool|isFlat|

/*
void setAlignment ( int alignment )
*/
$method=|void|setAlignment|int

/*
void setCheckable ( bool checkable )
*/
$method=|void|setCheckable|bool

/*
void setFlat ( bool flat )
*/
$method=|void|setFlat|bool

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
QString title () const
*/
$method=|QString|title|

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QGROUPBOX_MINIMUMSIZEHINT )
{
  QGroupBox * obj = (QGroupBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setChecked ( bool checked )
*/
$method=|void|setChecked|bool

#pragma ENDDUMP
