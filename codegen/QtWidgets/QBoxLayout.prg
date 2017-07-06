$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QSIZE
#endif

CLASS QBoxLayout INHERIT QLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addLayout
   METHOD addSpacerItem
   METHOD addSpacing
   METHOD addStretch
   METHOD addStrut
   METHOD addWidget
   METHOD direction
   METHOD insertLayout
   METHOD insertSpacerItem
   METHOD insertSpacing
   METHOD insertStretch
   METHOD insertWidget
   METHOD setDirection
   METHOD setSpacing
   METHOD setStretch
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretch
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBoxLayout ( Direction dir, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_NEW )
{
  QBoxLayout * o = new QBoxLayout ( (QBoxLayout::Direction) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addLayout ( QLayout * layout, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDLAYOUT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addLayout ( PQLAYOUT(1), OPINT(2,0) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addSpacerItem ( QSpacerItem * spacerItem )
*/
$method=|void|addSpacerItem|QSpacerItem *

/*
void addSpacing ( int size )
*/
$method=|void|addSpacing|int

/*
void addStretch ( int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSTRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->addStretch ( OPINT(1,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addStrut ( int size )
*/
$method=|void|addStrut|int

/*
void addWidget ( QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDWIDGET )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    obj->addWidget ( PQWIDGET(1), OPINT(2,0), (Qt::Alignment) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Direction direction () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_DIRECTION )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->direction () );
  }
}

/*
void insertLayout ( int index, QLayout * layout, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTLAYOUT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertLayout ( PINT(1), PQLAYOUT(2), OPINT(3,0) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertSpacerItem ( int index, QSpacerItem * spacerItem )
*/
$method=|void|insertSpacerItem|int,QSpacerItem *

/*
void insertSpacing ( int index, int size )
*/
$method=|void|insertSpacing|int,int

/*
void insertStretch ( int index, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTSTRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      obj->insertStretch ( PINT(1), OPINT(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertWidget ( int index, QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTWIDGET )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->insertWidget ( PINT(1), PQWIDGET(2), OPINT(3,0), (Qt::Alignment) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirection ( Direction direction )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETDIRECTION )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDirection ( (QBoxLayout::Direction) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( int spacing )
*/
$method=|void|setSpacing|int

/*
void setStretch ( int index, int stretch )
*/
$method=|void|setStretch|int,int

/*
bool setStretchFactor ( QWidget * widget, int stretch )
*/
void QBoxLayout_setStretchFactor1 ()
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setStretchFactor ( PQWIDGET(1), PINT(2) ) );
  }
}

/*
bool setStretchFactor ( QLayout * layout, int stretch )
*/
void QBoxLayout_setStretchFactor2 ()
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setStretchFactor ( PQLAYOUT(1), PINT(2) ) );
  }
}

//[1]bool setStretchFactor ( QWidget * widget, int stretch )
//[2]bool setStretchFactor ( QLayout * layout, int stretch )

HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCHFACTOR )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QBoxLayout_setStretchFactor1();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QBoxLayout_setStretchFactor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int spacing () const
*/
$method=|int|spacing|

/*
int stretch ( int index ) const
*/
$method=|int|stretch|int

/*
virtual void addItem ( QLayoutItem * item )
*/
$method=|void|addItem|QLayoutItem *

/*
virtual int count () const
*/
$method=|int|count|

/*
virtual Qt::Orientations expandingDirections () const
*/
$method=|Qt::Orientations|expandingDirections|

/*
virtual bool hasHeightForWidth () const
*/
$method=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int w ) const
*/
$method=|int|heightForWidth|int

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_ITEMAT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_MAXIMUMSIZE )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual int minimumHeightForWidth ( int w ) const
*/
$method=|int|minimumHeightForWidth|int

/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_MINIMUMSIZE )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setGeometry ( const QRect & r )
*/
$method=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_SIZEHINT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QBOXLAYOUT_TAKEAT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QLayoutItem * ptr = obj->takeAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
