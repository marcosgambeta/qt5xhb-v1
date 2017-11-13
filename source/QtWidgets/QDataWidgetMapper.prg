/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
#endif

CLASS QDataWidgetMapper INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addMapping
   METHOD clearMapping
   METHOD currentIndex
   METHOD itemDelegate
   METHOD mappedPropertyName
   METHOD mappedSection
   METHOD mappedWidgetAt
   METHOD model
   METHOD orientation
   METHOD removeMapping
   METHOD rootIndex
   METHOD setItemDelegate
   METHOD setModel
   METHOD setOrientation
   METHOD setRootIndex
   METHOD setSubmitPolicy
   METHOD submitPolicy
   METHOD revert
   METHOD setCurrentIndex
   METHOD setCurrentModelIndex
   METHOD submit
   METHOD toFirst
   METHOD toLast
   METHOD toNext
   METHOD toPrevious

   METHOD onCurrentIndexChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDataWidgetMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDataWidgetMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDataWidgetMapper>
#endif

#include <QModelIndex>

/*
QDataWidgetMapper ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_NEW )
{
  QDataWidgetMapper * o = new QDataWidgetMapper ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDATAWIDGETMAPPER_DELETE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addMapping ( QWidget * widget, int section )
*/
void QDataWidgetMapper_addMapping1 ()
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addMapping ( PQWIDGET(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
*/
void QDataWidgetMapper_addMapping2 ()
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addMapping ( PQWIDGET(1), PINT(2), *PQBYTEARRAY(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addMapping ( QWidget * widget, int section )
//[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QDataWidgetMapper_addMapping1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    QDataWidgetMapper_addMapping2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clearMapping ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_CLEARMAPPING )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMapping ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_CURRENTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}


/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ITEMDELEGATE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}


/*
QByteArray mappedPropertyName ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDPROPERTYNAME )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->mappedPropertyName ( PQWIDGET(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int mappedSection ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDSECTION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->mappedSection ( PQWIDGET(1) ) );
  }
}


/*
QWidget * mappedWidgetAt ( int section ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDWIDGETAT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->mappedWidgetAt ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MODEL )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ORIENTATION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}


/*
void removeMapping ( QWidget * widget )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_REMOVEMAPPING )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeMapping ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex rootIndex () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ROOTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootIndex () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETITEMDELEGATE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setItemDelegate ( PQABSTRACTITEMDELEGATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETMODEL )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setModel ( PQABSTRACTITEMMODEL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation aOrientation )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETORIENTATION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETROOTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRootIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSubmitPolicy ( SubmitPolicy policy )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETSUBMITPOLICY )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSubmitPolicy ( (QDataWidgetMapper::SubmitPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SubmitPolicy submitPolicy () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SUBMITPOLICY )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->submitPolicy () );
  }
}


/*
void revert ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_REVERT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->revert ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETCURRENTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentModelIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETCURRENTMODELINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentModelIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool submit ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SUBMIT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->submit () );
  }
}


/*
void toFirst ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOFIRST )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toFirst ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toLast ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOLAST )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toLast ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toNext ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TONEXT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toNext ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toPrevious ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOPREVIOUS )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toPrevious ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
