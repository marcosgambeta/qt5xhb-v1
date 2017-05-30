/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QBoxLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBoxLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBoxLayout>
#endif

/*
QBoxLayout ( Direction dir, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_NEW )
{
  int par1 = hb_parni(1);
  QBoxLayout * o = new QBoxLayout (  (QBoxLayout::Direction) par1, OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QBOXLAYOUT_DELETE )
{
  QBoxLayout * obj = (QBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addLayout ( QLayout * layout, int stretch = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDLAYOUT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    obj->addLayout ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addSpacerItem ( QSpacerItem * spacerItem )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSPACERITEM )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSpacerItem * par1 = (QSpacerItem *) _qt5xhb_itemGetPtr(1);
    obj->addSpacerItem ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addSpacing ( int size )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDSPACING )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->addSpacing ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
      obj->addStretch ( (int) ISNIL(1)? 0 : hb_parni(1) );
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
HB_FUNC_STATIC( QBOXLAYOUT_ADDSTRUT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->addStrut ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDWIDGET )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    obj->addWidget ( PQWIDGET(1), OPINT(2,0),  (Qt::Alignment) par3 );
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
    QLayout * par2 = (QLayout *) _qt5xhb_itemGetPtr(2);
    obj->insertLayout ( PINT(1), par2, (int) ISNIL(3)? 0 : hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertSpacerItem ( int index, QSpacerItem * spacerItem )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTSPACERITEM )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSpacerItem * par2 = (QSpacerItem *) _qt5xhb_itemGetPtr(2);
    obj->insertSpacerItem ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertSpacing ( int index, int size )
*/
HB_FUNC_STATIC( QBOXLAYOUT_INSERTSPACING )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->insertSpacing ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
      obj->insertStretch ( PINT(1), (int) ISNIL(2)? 0 : hb_parni(2) );
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
    obj->insertWidget ( PINT(1), PQWIDGET(2), OPINT(3,0),  (Qt::Alignment) par4 );
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
    int par1 = hb_parni(1);
    obj->setDirection (  (QBoxLayout::Direction) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETSPACING )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setSpacing ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStretch ( int index, int stretch )
*/
HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setStretch ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setStretchFactor ( QWidget * widget, int stretch )
*/
void QBoxLayout_setStretchFactor1 ()
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->setStretchFactor ( PQWIDGET(1), PINT(2) ) );
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
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->setStretchFactor ( par1, PINT(2) ) );
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
HB_FUNC_STATIC( QBOXLAYOUT_SPACING )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->spacing () );
  }
}

/*
int stretch ( int index ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_STRETCH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->stretch ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void addItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QBOXLAYOUT_ADDITEM )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int count () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_COUNT )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->count () );
  }
}

/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_EXPANDINGDIRECTIONS )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->expandingDirections () );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QBOXLAYOUT_HASHEIGHTFORWIDTH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasHeightForWidth () );
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QBOXLAYOUT_HEIGHTFORWIDTH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->heightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QBOXLAYOUT_INVALIDATE )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->invalidate ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QBOXLAYOUT_MINIMUMHEIGHTFORWIDTH )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->minimumHeightForWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QBOXLAYOUT_SETGEOMETRY )
{
  QBoxLayout * obj = (QBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
