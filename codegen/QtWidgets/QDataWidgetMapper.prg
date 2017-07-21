$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QModelIndex>

/*
QDataWidgetMapper ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_NEW )
{
  QDataWidgetMapper * o = new QDataWidgetMapper ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

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
$method=|void|clearMapping|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

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
$method=|int|mappedSection|QWidget *

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
$method=|Qt::Orientation|orientation|

/*
void removeMapping ( QWidget * widget )
*/
$method=|void|removeMapping|QWidget *

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
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void setOrientation ( Qt::Orientation aOrientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

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
$method=|void|revert|

/*
virtual void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setCurrentModelIndex ( const QModelIndex & index )
*/
$method=|void|setCurrentModelIndex|const QModelIndex &

/*
bool submit ()
*/
$method=|bool|submit|

/*
void toFirst ()
*/
$method=|void|toFirst|

/*
void toLast ()
*/
$method=|void|toLast|

/*
void toNext ()
*/
$method=|void|toNext|

/*
void toPrevious ()
*/
$method=|void|toPrevious|

#pragma ENDDUMP
