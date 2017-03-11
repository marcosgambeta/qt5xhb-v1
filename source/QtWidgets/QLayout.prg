/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QLayout INHERIT QObject,QLayoutItem

   DATA class_id INIT Class_Id_QLayout
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD menuBar
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment1
   METHOD setAlignment2
   METHOD setAlignment3
   METHOD setAlignment
   METHOD setContentsMargins1
   METHOD setContentsMargins2
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD expandingDirections
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD closestAcceptableSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLayout>
#endif


//[1]QLayout(QWidget * parent)
//[2]QLayout()

//HB_FUNC_STATIC( QLAYOUT_NEW )
//{
//  if( ISNUMPAR(1) && ISOBJECT(1) )
//  {
//    HB_FUNC_EXEC( QLAYOUT_NEW1 );
//  }
//  else if( ISNUMPAR(0) )
//  {
//    HB_FUNC_EXEC( QLAYOUT_NEW2 );
//  }
//}

HB_FUNC_STATIC( QLAYOUT_DELETE )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool activate ()
*/
HB_FUNC_STATIC( QLAYOUT_ACTIVATE )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->activate (  ) );
  }
}


/*
virtual void addItem ( QLayoutItem * item ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_ADDITEM )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addWidget ( QWidget * w )
*/
HB_FUNC_STATIC( QLAYOUT_ADDWIDGET )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->addWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMargins contentsMargins () const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSMARGINS )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->contentsMargins (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}


/*
QRect contentsRect () const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSRECT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->contentsRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QLAYOUT_COUNT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}




/*
virtual int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QLAYOUT_INDEXOF )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QLAYOUT_ISENABLED )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
virtual QLayoutItem * itemAt ( int index ) const = 0
*/
HB_FUNC_STATIC( QLAYOUT_ITEMAT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}



/*
QWidget * menuBar () const
*/
HB_FUNC_STATIC( QLAYOUT_MENUBAR )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->menuBar (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QLAYOUT_PARENTWIDGET )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->parentWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void removeItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEITEM )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEWIDGET )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->removeWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setAlignment ( QWidget * w, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT1 )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retl( obj->setAlignment ( par1,  (Qt::Alignment) par2 ) );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT2 )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT3 )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retl( obj->setAlignment ( par1,  (Qt::Alignment) par2 ) );
  }
}


//[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
//[2]void setAlignment ( Qt::Alignment alignment )
//[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT2 );
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS1 )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentsMargins ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( const QMargins & margins )
*/
HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS2 )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * par1 = (QMargins *) _qt5xhb_itemGetPtr(1);
    obj->setContentsMargins ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETCONTENTSMARGINS1 );
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETCONTENTSMARGINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEnabled ( bool enable )
*/
HB_FUNC_STATIC( QLAYOUT_SETENABLED )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMenuBar ( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_SETMENUBAR )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setMenuBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeConstraint ( SizeConstraint )
*/
HB_FUNC_STATIC( QLAYOUT_SETSIZECONSTRAINT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSizeConstraint (  (QLayout::SizeConstraint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( int )
*/
HB_FUNC_STATIC( QLAYOUT_SETSPACING )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SizeConstraint sizeConstraint () const
*/
HB_FUNC_STATIC( QLAYOUT_SIZECONSTRAINT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizeConstraint (  ) );
  }
}


/*
int spacing () const
*/
HB_FUNC_STATIC( QLAYOUT_SPACING )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->spacing (  ) );
  }
}


/*
virtual QLayoutItem * takeAt ( int index ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_TAKEAT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->takeAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}


/*
void update ()
*/
HB_FUNC_STATIC( QLAYOUT_UPDATE )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->update (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QLAYOUT_EXPANDINGDIRECTIONS )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expandingDirections (  ) );
  }
}


/*
virtual QRect geometry () const
*/
HB_FUNC_STATIC( QLAYOUT_GEOMETRY )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QLAYOUT_INVALIDATE )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isEmpty () const
*/
HB_FUNC_STATIC( QLAYOUT_ISEMPTY )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
virtual QLayout * layout ()
*/
HB_FUNC_STATIC( QLAYOUT_LAYOUT )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * ptr = obj->layout (  );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}


/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QLAYOUT_MAXIMUMSIZE )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QLAYOUT_MINIMUMSIZE )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry ( const QRect & r )
*/
HB_FUNC_STATIC( QLAYOUT_SETGEOMETRY )
{
  QLayout * obj = (QLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QSize closestAcceptableSize ( const QWidget * widget, const QSize & size )
*/
HB_FUNC_STATIC( QLAYOUT_CLOSESTACCEPTABLESIZE )
{
  const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
  QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
  QSize * ptr = new QSize( QLayout::closestAcceptableSize ( par1, *par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
}



#pragma ENDDUMP
